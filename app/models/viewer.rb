class Viewer
  attr_accessor :username
  attr_reader :reviews, :reviewed_movies

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
    @reviews = []
    @reviewed_movies = []
  end

  def self.all
    @@all
  end

  def reviews(review)
    @reviews<<review
  end

  def reviewed_movies(movie)
    @reviewed_movies<<movie
  end

  def reviewed_movie?(movie)
    @reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if !self.reviewed_movie(movie)
      Review.new(self, movie, rating)
    else
      @reviews.each do |n|
        if n.movie == movie
          n.rating = rating
      end
    end
  end
  
end
