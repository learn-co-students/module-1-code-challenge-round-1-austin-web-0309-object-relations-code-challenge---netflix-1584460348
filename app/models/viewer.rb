class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  
  def reviews
    #returns an array of Review instances associated with the Viewer instance
    Review.all.map {|review| review.viewer == self}
    #returns all review instances
  end

  def reviewed_movies
    #returns an array of Movie instances associated with the Viewer instance
    #rochelle.review_movies = [Movie instances]
    reviews.map {|review| review.movie}
  end

  def reviewed_movie?(movie)
    #returns true if the Viewer has reviewed this Movie (if there is a Review instance that has this Viewer and Movie), returns false otherwise
    #use select?
    reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    #if the Viewer instance and the passed Movie instance are not already associated, this method should create a new Review instance
      Review.new(self, movie, rating)
    #if this Viewer has already reviewed this Movie, assigns the new rating to the existing Review instance
      if reviewed_movie?
        reviewed_movies.each {|reviewed_movie| reviewed_movie.rating = rating}
      else 
        Review.new(self, movie, rating)
      end
  end
end
