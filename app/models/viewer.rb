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

  def reviewed_movie?(mov)
    my_revs = Review.all.select {|rev| rev.viewer == self}.map {|n| n.movie == mov}
    my_revs.any?
  end

  def rate_movie(mov, rat)
    if self.reviewed_movie?
      #update rating for review instance
      
    else 
      #create new review
      Review.new(self, mov, rat)
    end
  end
  
end
