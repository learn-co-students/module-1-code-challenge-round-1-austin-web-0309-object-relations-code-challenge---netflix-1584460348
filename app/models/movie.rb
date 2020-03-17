class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

# returns an array of all the Review 
# instances for the Movie.
  def reviews
    # binding.pry
    Review.all.select {|review|  
      if review.movie == self 
      review
      end}
  end

# # returns an array of all of the Viewer 
# # instances that reviewed the Movie.
  def reviewers 
    self.reviews.map {|audience| audience.viewer}

        
        # Review.all.select {|audience|  
        #   if audience.movie == self 
        #     audience.viewer
        #   # binding.pry
        #   end}

  end

end

