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

# # returns an array of Review instances 
# # associated with the Viewer instance.
# self =  #<Viewer:0x00007ff27024ecc0 @username="Richard">
  def reviews
    # binding.pry
    Review.all.select {|flick| 
    if flick.viewer == self
    flick
    end}
  end

# # returns an array of Movie instances 
# # reviewed by the Viewer instance.
  def reviewed_movies
    self.reviews.map {|flick| flick.movie}
  end
end



