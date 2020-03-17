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

  def self.highest_rated
    # 
  end

  def average_rating
    ratings = Review.all.select {|rev| rev.movie == self}.map {|rev| rev.rating}
    ratings / ratings.length
  end 
  
end

