class Review
    attr_accessor :rating
    attr_reader :viewer, :movie
    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating

        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.reviewed_movies
        @@all.map{|x| x.movie}.uniq
    end
end