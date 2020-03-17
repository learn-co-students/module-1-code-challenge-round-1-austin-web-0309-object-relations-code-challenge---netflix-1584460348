# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end
#I am going to be real, idk if the code works, I couldnt get pry to work, and I was stressed this whole time
#But i feel like i did my best and i will probably do better on the next one.
binding.pry
0
