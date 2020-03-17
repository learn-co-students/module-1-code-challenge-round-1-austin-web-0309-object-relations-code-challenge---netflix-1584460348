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
    reviews = Review.all.select do |rv| 
      rv.project == self
    end
    reviews.map do |rv|
      rv.movie
  end

  def Movie 
    movie = Movie.all.select do |ttl| 
    ttl.project == self
  end
  movie.map do |ttl|
    ttl.movie
  end
end

def reviewed_movies?(movie)
  if Viever == Movie && Review == Viewer
    return true
  else
    return false
  end
end

  def rate_movies(movie, rating)
    if Viewer && Movie === Review
      Review.new(movie, viewer)
    else
      return "Rating is now #{new_rating)"
    end
    
  end
  
end

binding.pry
