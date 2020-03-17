# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rochelle = Viewer.new("rochelle")
edward = Viewer.new("edward")
Viewer.all
#=> [#<Viewer:0x00007f929c574938 @username="rochelle">, #<Viewer:0x00007f929c5748e8 @username="edward">]

the_shining = Movie.new("The Shining")
parasite = Movie.new("Parasite")
avengers_end_game = Movie.new("Avengers End Game")
Movie.all
#=> [#<Movie:0x00007fed6a9227f0 @title="The Shining">,
#<Movie:0x00007fed6a9227a0 @title="Parasite">,
#<Movie:0x00007fed6a922750 @title="Avengers End Game">]

edward_the_shining = Review.new("Edward", "The Shining", 7)
edward_parasite = Review.new("Rochelle", "Parasite", 8)
rochelle_parasite = Review.new("Rochelle", "Parasite", 9)
rochelle_avengers = Review.new("Rochelle", "Avengers End Game", 7)
Review.all
# => [#<Review:0x00007f85e652a5d0 @movie="The Shining", @rating=7, @viewer="Edward">,
#  <Review:0x00007f85e652a558 @movie="Parasite", @rating=8, @viewer="Rochelle">,
#  <Review:0x00007f85e652a4e0 @movie="Parasite", @rating=9, @viewer="Rochelle">,
#  <Review:0x00007f85e652a468 @movie="Avengers End Game", @rating=7, @viewer="Rochelle">]


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
