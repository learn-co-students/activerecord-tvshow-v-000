def highest_rating 
  Show.maximum(:rating)
#this method should return the highest value in the ratings column. hint: if there is a #minimum Active Record method, might there be a #maximum method?
end

def most_popular_show
 high = Show.highest_rating
 Show.find_by(rating: high)
 #: this method should return the show with the highest rating. hint: use the #highest_rating method as a helper method.
end

def lowest_rating
 Show.minimum(:rating)
  #: returns the lowest value in the ratings column.
end

def least_popular_show
  low = Show.lowest_rating
 Show.find_by(rating: low)#: returns the show with the lowest rating.
end

def ratings_sum

  Show.rating.sum
  #: returns the sum of all of the ratings.
end
def popular_shows
  Show.find_by(:rating).where(:rating > 5)
#: returns an array of all of the shows that have a rating greater than 5. hint: use the #where method Active Record method.
end

def shows_by_alphabetical_order
  Shows.names.order(:asc)
#: returns an array of all of the shows sorted by alphabetical order according to their names. hint: use the #order Active Record method.
end