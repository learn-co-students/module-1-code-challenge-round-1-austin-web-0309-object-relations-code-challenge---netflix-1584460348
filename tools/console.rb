# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
steve = Viewer.new("Steve")
sally = Viewer.new("Sally")
one27 = Movie.new("127 Hours")
breakfast = Movie.new("The Breakfast Club")
fight_club = Movie.new("The Fight Club")
steve_review_127 = Review.new(steve, one27, 4)
steve_review_fight = Review.new(steve, fight_club, 10)
sally_review = Review.new(sally, breakfast, 9)
steve.rate_movie(breakfast, 10)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
