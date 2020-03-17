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
    reviews = Review.all.select {|review| review.movie == self}
  end

  def reviewers
    reviews.map {|review| review.viewer}
  end

  def average_rating
    #okay so !!!! use the reviews method to find all of the reviews for this movie
    #count up how many reviews they are (array.length or smth)
    #add up the reviews' ratings
    #divide by number of reviews
    number_of_reviews = reviews.length
    reviews.map {|review| review.rating}.reduce(:+)/number_of_reviews
    #IT WORKS OMG
    #i mean yeah duh >.>
  end

  def highest_rated
    averages = Review.all.map {|review| review.average_rating}.sort
    averages.first
    #wait does that return the highest average or the movie instance with the highest average ahhhhhhh
    #time to test lol
    #jk time is up oof
  end

end
