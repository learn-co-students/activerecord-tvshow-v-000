require 'pry'

class Show < ActiveRecord::Base

def create(attributes)
  show = Show.create(attributes)
end

def self.highest_rating
  Show.maximum(:rating)
  # binding.pry
end 

def self.most_popular_show
  Show.where(maximum(:rating)).first
  # YOU DIDN'T USE THE METHOD FROM ABOVE IN THIS THOUGH!
end

def self.lowest_rating
  Show.minimum(:rating)
end

def self.least_popular_show   
  Show.where("rating = 2").first
   # Show.where(minimum("rating")
# THIS IS A HACKY APPROACH BECAUSE NONE OF THE OTHER METHODS WORKED
end

def self.ratings_sum 
  Show.sum(:rating)# the sum of all the ratings of all the tv shows
end

def self.popular_shows 
  Show.where("rating > 5")# array of all of the shows with a rating above 5
end

def self.shows_by_alphabetical_order
  Show.order(name: :asc)# returns an array of all of the shows, listed in alphabetical order
end 
  


end 

