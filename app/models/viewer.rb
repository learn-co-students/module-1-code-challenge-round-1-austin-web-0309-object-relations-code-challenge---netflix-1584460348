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
    Review.all.select do |review|
      review.viewer == self
    end
  end

  def reviewed_movies
    reviews.map {|x| x.movie}
  end

  def reviewed_movie?(movie_instance)
    self.reviewed_movies.any? {|movie| movie.title == movie_instance.title}
  end

  def rate_movie(movie, rating)
    if !movie.reviewers.include?(self)
      Review.new(self, movie, rating)
    else
      reviews.each do |review|
        if review.movie == movie
          review.rating = rating
        end
      end
    end
  end
  
end
