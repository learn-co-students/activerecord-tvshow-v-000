require 'pry'
#generally shows controller will be plural

#highest_rating: this method should return the highest value in the ratings column.
#hint: if there is a minimum Active Record method, might there be a maximum method?

def highest_rating
  binding.pry
  Show.maximum("rating")
end

#most_popular_show: this method should return the show with the highest rating.
#hint: use the highest_rating method as a helper method.

def most_popular_show
  highest_rating
end
