class Review
  attr_accessor
  @@all = []
  def initialize(viewer, movie, rating)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all << self
  end

  def rating
    self.rating
  end
  
  def Review.all
    @@all
  end

  def viewer 
    self.viewer
  end

  def movie 
    self.movie
  end

 
end
