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

  #returns an array of all the `Review` instances for the `Movie`.
  def reviews
    Review.all.select{|review| review.movie == self}
  end

  #returns an array of all of the `Viewer` instances that reviewed the `Movie`.
  def reviewers
    Review.all.select{|review| review.viewer == self}
  end

  def average_rating
    rating = Review.all.map{|film| film.rating == self}
    total = rating.reduce(0, :+)
    average = total / rating.count
    average
  end

  def self.highest_rated
    average_rating.max
  end
end
