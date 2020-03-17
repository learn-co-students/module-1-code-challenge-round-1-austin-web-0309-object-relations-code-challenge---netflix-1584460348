class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    
    save
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  # return an array of reviews for this movie
  def reviews
    Review.all.select{|x| x.movie == self }
  end

  # return an array of viewers that reviewed this movie
  def reviewers
    reviews.map{|x| x.viewer }.uniq
  end

  def average_rating
    ( reviews.reduce(0){|x, y| x += y.rating }.to_f / reviews.count ) || 0
  end

  # return the highest rated movie
  def self.highest_rated
    # reviews = Review.all
    Review.reviewed_movies.sort_by{|x| -x.average_rating }.first
  end
end
