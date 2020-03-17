class Review
    attr_accessor :viewer, :movie, :rating
    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        self.class.all << self
    end

    def self.all
        @@all
    end

    def viewer
        #returns the Viewer instance associated with the Review instance
        #for one instance of review, return its viewer
        # Viewer.all.select {|viewer| viewer.reviews == self}
        # review.viewer
    end

    def movie
        #returns the Movie instance associated with the Review instance
        # Movie.all.select {movie| movie.reviews == self}
    end
end
