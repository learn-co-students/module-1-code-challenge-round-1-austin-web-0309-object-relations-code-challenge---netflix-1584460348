# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

bryan = Viewer.new("Bryan")
john = Viewer.new("John")
edward = Viewer.new("Edward")
adrian = Viewer.new("Adrian")

eternal = Movie.new("Eternal Sunshine of the Spotless Mind")
saddest = Movie.new("The Saddest Music in the World")
runner = Movie.new("Blade Runner 2049")

Review.new(bryan, eternal, 10)
Review.new(john, eternal, 7)
Review.new(edward, eternal, 9)
adrian.rate_movie(eternal, 10)

Review.new(bryan, saddest, 9.5)
Review.new(edward, saddest, 8)

Review.new(adrian, runner, 10)









# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
