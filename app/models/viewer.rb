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

  def reviews
    Review.all.select { |review| review.viewer == self}
  end

  def reviewed_movies
    reviews.map { |review| review.movie}
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end

  def rate_movie(new_movie, new_rating)
    if self.reviewed_movie?(new_movie)
      Review.all.detect { |review| review.movie == new_movie}.rating = new_rating
    else
      Review.new(self, new_movie, new_rating)
    end
  end
  
end
