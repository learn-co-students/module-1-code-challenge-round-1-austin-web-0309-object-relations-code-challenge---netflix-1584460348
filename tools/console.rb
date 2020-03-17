# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

10.times {Movie.new(Faker::Superhero.name)}
10.times {Viewer.new(Faker::Name.name)}

5.times {|i| Review.new(Viewer.all[i], Movie.all[i], rand(0..10))}
5.times {|i| Review.new(Viewer.all[i], Movie.all[i + 2], rand(0..10))}
5.times {|i| Review.new(Viewer.all[i], Movie.all[i + 4], rand(0..10))}


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
