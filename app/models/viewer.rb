class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  #returns an array of `Review` instances associated with the `Viewer` instance.
  def review
    Review.all.select{|view| view.viewer == self }
  end

  #returns an array of `Movie` instances reviewed by the `Viewer` instance.
  def reviewed_movies
    Movie.all.select{|view| view.movie == self}
  end

  def reviewed_movie?(movie)
    movie == reviewed_movies ?
  end

  def rate_movie(movie, rating)
    # if self && movie == associated?
    # rating = Review.rating
    # else
    # Review.new(self, movie, rating)
  end
end
