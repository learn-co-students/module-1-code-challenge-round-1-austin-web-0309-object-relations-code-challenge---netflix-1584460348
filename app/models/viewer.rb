class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    
    save
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  # returns an array of movies that both viewers have reviewed
  def compare(viewer)
    viewer.reviewed_movies & self.reviewed_movies
  end

  # returns an array of review instances associated with this viewer
  def reviews
    Review.all.select{|x| x.viewer == self }
  end

  # return an array of movies that this viewer has reviewed
  def reviewed_movies
    reviews.map{|x| x.movie }
  end

  # returns true if the user has reviewed this movie, otherwise false
  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end

  # A Movie instance and a rating (number) are passed in as arguments
  # if the Viewer instance and the passed Movie instance are not already
  #   associated, this method should create a new Review instance
  # if this Viewer has already reviewed this Movie, assigns the new rating
  #   to the existing Review instance
  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      reviews.select{|x| x.movie == movie}.first.rating = rating
    else
      Review.new(self, movie, rating)
    end
  end
end
