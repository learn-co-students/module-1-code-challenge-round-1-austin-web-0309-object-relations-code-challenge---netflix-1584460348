# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
review = Review.new("JR", "Hitch", 5)

viewer = Viewer.new("jr9863")



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
