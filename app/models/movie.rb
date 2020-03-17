class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def title
    self.title
  end

  def Movie.all
    self.all
  end

  def reviews
    Review.all.select do |review|
      review.movie ==self
    end
  end

  def reviewed_movies
    reviews.collect do |review|
      review.viewer
    end
  end

  def average_rating(movie)
    #find all Reviews associated with this 
    #movie instance
    reviewed_movies = Reviews.all.collect {|review| review.movie}
    #create array of ratings
    rating_array = reviewed_movies.map {|review| review.rating}
    #total ratings from these Reviews divided by
    #number of ratings
    avg_rating = rating_array.reduce(:+)/(rating_array.length)
  binding.pry
  end

  def Movie.highest_rated
    #create hash of movie instance and average rating
    movie_avg_rating = {}
    # cycle through all movie instances
    Review.all.each do |review|
      current_movie = review.movie
      # find average rating for each
      curr_avg_rating = average_rating(review.movie)
      movie_avg_rating[current_movie] = current_avg_rating
    end
    # find greatest average rating which 
    # returns an array of the key and value
    movie_avg_rating.max_by{|k,v| v}[0]
   end

end
