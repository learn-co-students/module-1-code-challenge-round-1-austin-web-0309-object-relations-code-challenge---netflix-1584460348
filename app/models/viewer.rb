class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def username
    self.username
  end

  def Viewer.all
    self.all
  end

  def reviews
    Review.all.select do |review|
      review.viewer ==self
    end
  end

  def reviewed_movies
    reviews.collect do |review|
      review.movie
    end
  end

  def reviewed_movie?(movie)
    movie_reviewed = Review.all.find {|review|
      review.movie}
      movie_reviewed.self
  end

  def rate_movie(movie, rating)
    this_review = Review.all.select {|review| review.viewer == self}
    if !this_review.include?(movie)
      Review.new(self, movie, rating)
    else
     this_review.rating = rating
    end
  end
  
end
