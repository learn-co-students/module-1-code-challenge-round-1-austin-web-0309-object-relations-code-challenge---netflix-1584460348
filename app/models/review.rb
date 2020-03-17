class Review
    attr_accessor :rating

    @@all = []

    def initialize(viewer, movie, rating=0)
        @viewer = viewer
        @movie = movie
        @rating = 0
        self.class.all << self
    end

    def movie
        movie = Movie.all.select do |ttl| 
            ttl.movie == self
          end
          movie.map do |ttl|
            ttl.movie
    end

    def viewer
        viewer = Viewer.all.select do |vw| 
            vw.viewer == self
          end
          viewer.map do |vw|
            vw.movie
          end
        end

    def self.all
        @@all
    end

end

binding.pry