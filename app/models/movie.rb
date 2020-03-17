require 'pry'

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
    #returns the Movie instance with the highest average rating
    @all.sort_by {|movies| }
  end

  def reviews
    # returns an array of all the Review instances for the Movie
    Review.all.map {|review| review.movie == self}
    #returns all the reviews associated with this movie
    #[bunch of review instances...including the viewer, movie, rating]
  end

  def reviewers
    #returns an array of all of the Viewer instances that reviewed the Movie
    #we grabbed all the reviews that belongs to this movie using reviews method
    reviews.map {|review| review.viewer}
  end

  def averate_rating
    #returns the average of all ratings for the Movie instance
    #to average ratings, add all ratings together and divide by the total number of ratings.
    #use reduce?
    ratings = reviews.map {|review| review.rating}
    sum = ratings.reduce(:+)
    sum / ratings.count
  end
end
