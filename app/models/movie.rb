class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.movie == self}
  end

  def reviewers
    reviews.map {|review| review.viewer}
  end

  def average_rating
    total = reviews.map {|review| review.rating}.reduce(:+) 
    average = total / reviews.length
  end

  def self.highest_rated
    Review.all.sort_by {|review| review.movie.average_rating}.last
  end

end
