require 'pry'
class Show < ActiveRecord::Base

 def self.highest_rating
  Show.maximum(:rating)
 end# of highest_rating


 def self.most_popular_show
  Show.find_by(rating: self.highest_rating)
 end# of self.most_popular_show


 def self.lowest_rating
  Show.minimum(:rating)
 end# of self.lowest_rating


 def self.least_popular_show
   Show.find_by(rating: self.lowest_rating)
 end# of self.least_popular_show


 def self.ratings_sum
   Show.sum(:rating)
 end# of self.ratings_sum


 def self.popular_shows
   Show.where("rating > 5")
 end# of self.popular_shows


 def self.shows_by_alphabetical_order
   Show.order(name: :asc)
 end# of self.shows_by_alphabetical_order


end# of class 