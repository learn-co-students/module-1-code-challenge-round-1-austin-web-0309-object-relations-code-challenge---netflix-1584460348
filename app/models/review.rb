class Review
    attr_accessor :viewer, :movie, :rating
    @@all = []

    def initialize (viewer, movie, rating)
        @viewer = viewer 
        @movie = movie 
        @rating = rating 
        @@all << self
    end

    def self.all 
        @@all
    end

# # returns the Viewer instance associated 
# # with the Review instance

    def viewer
        # binding.pry
        self.select {|person| person == viewer}
        # self.map {|person| 
        #     if person  == self.viewer
        #     self.viewer
        #     end}
        #     # binding.pry
        
    end

# # returns the Movie instance associated 
# # with the Review instance
#     def movie
#     end


end

# self 
#   <Review:0x00007fc80fb4a198 
#   @movie=#<Movie:0x00007fc80fb4a350 
#   @title="Nightmare Before Christmas">, 
#   @rating=9, 
#   @viewer=#<Viewer:0x00007fc80fb4a210 
#   @username="Ramona">>

