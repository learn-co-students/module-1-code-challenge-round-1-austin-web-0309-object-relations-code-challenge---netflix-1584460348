


class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    Review.all.select{|review| review.movie == self}
  end

  def reviewers
    reviews.map{|review| review.viewer}
  end

  def average_rating
    reviews.map{|review| review.rating}.inject(:+).to_f / reviews.count
  end






  def self.highest_rated
    self.all.max_by{|movie| movie.average_rating}
  end

  def self.all
    @@all
  end

end
