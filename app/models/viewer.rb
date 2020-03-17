


class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def reviews
    Review.all.select{|review| review.viewer == self}
  end

  def reviewed_movies
    reviews.map{|review| review.movie}
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if (existing_review = reviews.find{|review| review.movie == movie})
      existing_review.rating = rating
    else
      Review.new(self, movie, rating)
    end
  end

  def self.all
    @@all
  end
  
end
