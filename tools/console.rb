# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

15.times {Viewer.new(Faker::Name.name)}
15.times {Movie.new(Faker::Movie.name)}
15.times {Review.new(Viewer.username[rand(15)], Movie.title[rand(15), Review.rating[rand(5)]])}



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
