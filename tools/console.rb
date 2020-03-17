# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
movie1 = Movie.new("The Matrix")
movie2 = Movie.new("The Truman Show")
movie3 = Movie.new("Fight Club")

viewer1 = Viewer.new("Josh Greenhair")
viewer2 = Viewer.new("JR Linebacker")
viewer3 = Viewer.new("Patrick Day")
 
review1 = Review.new(viewer1, movie1, 10)
review2 = Review.new(viewer2, movie2, 9)
review3 = Review.new(viewer3, movie3, 8)
review4 = Review.new(viewer1, movie2, 5)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
