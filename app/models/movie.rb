class Movie
  attr_accessor :title
  attr_reader :reviews, :reviewers

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
    @reviews = []
    @reviewers = []
  end

  def self.all
    @@all
  end

  def reviews(review)
    @reviews<<review
  end

  def reviewers(user)
    @reviewers<<user
  end

  def average_rating
    average = 0
    @reviews.each do |n|
      average += n.rating
    end
    return average / @reviews.length
  end

  def self.highest_rated
    best = @@all[0]
    @@all.each do |n|
      if n.average_rating > best.average_rating
        best = n
      end
    end
    return best
  end

end
