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

  def reviews
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers
    reviews.map {|x| x.viewer}
  end

  def average_rating 
      counter = 0
      sum = 0
      while counter < self.reviews.length do
        sum += (self.reviews[counter].rating)
        counter += 1
      end
      average = sum/self.reviews.length.to_f
  end

  def self.highest_rated
    highest = ""
    highest_rating = 0
    counter = 0
    while counter < @@all.length
      @@all[counter].reviews.each do |review|
        if review.rating > highest_rating
          highest_rating = review.rating
          puts highest_rating
          highest = review.movie.title
        end
      end
      counter += 1
    end
    highest
  end

end
