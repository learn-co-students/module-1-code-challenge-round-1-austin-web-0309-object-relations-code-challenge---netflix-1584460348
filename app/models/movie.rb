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

  def reviewer
    reviewer = Viewer.all.select do |vw| 
        vw.reviewer == self
      end
      reviewer.map do |vw|
        vw.movie
      end
    end

    def review
      review = Review.all.select do |rv| 
          rv.project == self
        end
        review.map do |rw|
          rv.movie
        end
      end

      def average_rating
        #adds average to ratings to average them out
      end

      def self.highest_rating
      #returns the highest averaged movie
      end
end


