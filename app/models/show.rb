class Show < ActiveRecord::Base

def self.highest_rating 
  Show.maximum(:rating)
#this method should return the highest value in the ratings column. hint: if there is a #minimum Active Record method, might there be a #maximum method?
end

def self.most_popular_show
 high = Show.highest_rating
 Show.find_by(rating: high)
 #: this method should return the show with the highest rating. hint: use the #highest_rating method as a helper method.
end

def self.lowest_rating
 Show.minimum(:rating)
  #: returns the lowest value in the ratings column.
end

def self.least_popular_show
  low = Show.lowest_rating
 Show.find_by(rating: low)#: returns the show with the lowest rating.
end

def self.ratings_sum

  Show.sum(:rating)
  #: returns the sum of all of the ratings.
end
def self.popular_shows
  Show.where("rating > '5'")
#: returns an array of all of the shows that have a rating greater than 5. hint: use the #where method Active Record method.
end

def self.shows_by_alphabetical_order
  Show.order(:name)
#: returns an array of all of the shows sorted by alphabetical order according to their names. hint: use the #order Active Record method.
end



end