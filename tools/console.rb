# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# generate 10 movies
50.times { Movie.new(Faker::Book.unique.title) }
# generate 5 viewers
10.times { Viewer.new(Faker::Internet.unique.username) }
# each viewer randomly rates 4 movies
Viewer.all.each do |viewer|
  rand(5..10).times do
    viewer.rate_movie(Movie.all[(rand * Movie.all.count ).floor] , rand(1..5) )
  end
end

puts "Movie Ratings:"
Review.reviewed_movies.sort_by{|x| -x.title }
                      .each do |movie|
  puts "#{movie.title}: #{movie.average_rating.round(1)} "
end

puts "\n\nHighest Rated Movie: #{Movie.highest_rated.title}"




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
