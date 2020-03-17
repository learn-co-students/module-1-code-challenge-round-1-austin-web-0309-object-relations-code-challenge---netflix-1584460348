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
    Review.all.select { |review| review.movie == self}
  end

  def reviewers
    self.reviews.map { |review| review.viewer }
  end

  def ratings
    self.reviews.map { |review| review.rating}
  end

  def average_rating
    (ratings.sum.to_f) / ratings.size
  end

  def self.highest_rated
    Review.all.max_by { |review| review.rating}.movie
  end

end
