# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end


josh = Viewer.new("josh_gotro")
jack = Viewer.new("daphinora")
mike = Viewer.new("mmaggio")

movie_1 = Movie.new("Jaws")
movie_2 = Movie.new("The Martian")
movie_3 = Movie.new("Ella Enchanted")

review_1 = Review.new(josh, movie_1, 4)
review_2 = Review.new(jack, movie_2, 10)
review_3 = Review.new(mike, movie_2, 7)
review_4 = Review.new(jack, movie_1, 7)


movie_review = Review.all.select {|review| review.movie == movie_3 && review.viewer == jack}
    if movie_review == []
      Review.new(jack, movie_3, 8)
    else
      movie_review.rating = 8
    end

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
