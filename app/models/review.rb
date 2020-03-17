class Review
    attr_accessor :viewer, :movie, :rating

    @@all = []

    def initialize(user, mov, rat)
        @viewer = user
        @movie = mov 
        @rating = rat
        self.class.all << self
    end

    def self.all
        @@all
    end

end
