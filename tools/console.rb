# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

movie1 = Movie.new('movie1')
movie2 = Movie.new('movie2')
movie3 = Movie.new('movie3')
movie4 = Movie.new('movie4')
movie5 = Movie.new('movie5')
movie6 = Movie.new('movie6')
viewer1 = Viewer.new('viewer1')
viewer2 = Viewer.new('viewer2')
viewer3 = Viewer.new('viewer3')
viewer4 = Viewer.new('viewer4')
viewer5 = Viewer.new('viewer5')
viewer6 = Viewer.new('viewer6')

review1 = Review.new(viewer1, movie2, 2)
review2 = Review.new(viewer2, movie1, 5)
review3 = Review.new(viewer3, movie3, 4)
review4 = Review.new(viewer3, movie4, 7)
review5 = Review.new(viewer4, movie6, 6)
review6 = Review.new(viewer5, movie2, 3)
review7 = Review.new(viewer6, movie1, 4)






# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
