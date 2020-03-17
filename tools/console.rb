# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Movies
up = Movie.new("Up")
nightmare = Movie.new("Nightmare Before Christmas")
fingered = Movie.new("Freddie Got Fingered")

#Viewiers
dick = Viewer.new("Richard")
dan = Viewer.new("Daniel")
mona = Viewer.new("Ramona")

#Reviews
hilarious = Review.new(dick, fingered, 10)
not_for_me = Review.new(mona, fingered, 1)
enchanting = Review.new(mona, nightmare, 9)
easy_fun = Review.new(dan, up, 6)




#    ruby tools/console.rb
# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
