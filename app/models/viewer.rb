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
    Review.all.select {|review| review.viewer.username == self}
  end

  def reviewed_movies
    reviews.map {|review| review.movie}
  end

  def reviewed_movie?(movie)
    #first call on the #reviews method in the Movie class
    #to collect all of the reviews related to the input movie
    #then parse through those to select the ones made by this viewer (self)
    #currently blanking on how to call the method from Movies, though. 
    #Why is there a method called "reviews" in all of these classes? 
    #fml what terrible naming convention, ughhh yikes

    movie_reviews = Review.all.select {|review| review.movie == movie}
    test = movie_reviews.collect {|review| review.viewer == self}
    #okay so i have test spitting out a [true, false] array
    #how do i get that to tell the method to respond true??
    #like.. if one of the responses is "true" then puts "true"
    #test2 = test.select {|response| response == true}
    #come back at the end omg my brain is about to melt and ooze out of my ears
    #such ugly code omg
  end

  def rate_movie(movie, rating)
    #this is one of those ||= methods, right? If the viewer/movie instance already exist,
    #the existing review is changed to reflect that
    #else make the new review
    #jk it's an if statement lmao (but isn't everything really)
    
    #okay, collect (select) all of the reviews that have to do with the given movie
    #then parse through them to see if the viewer has left that review already
    #if that equals nil, create the new review instance
    #else review.rating = rating

    movie_review = Review.all.select {|review| review.movie == movie && review.viewer == self}
    if movie_review == []
      Review.new(self, movie, rating)
    else
      movie_review.rating = rating
    end
  end
  
end
