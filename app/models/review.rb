class Review
    attr_accessor :viewer, :movie, :rating
    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        self.class.all<<self
        @viewer.reviews(self)
        @viewer.reviewed_movies(@movie)
        @movie.reviews(self)
        @movie.reviewers(viewer)
    end

    def self.all
        @@all
    end

    def viewer
        @viewer
    end

    def movie
        @movie
    end

end
