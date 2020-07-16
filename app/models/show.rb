require 'pry'
#The model will deal with the logic specific for the model
class Show < ActiveRecord::Base
  require 'pry'
  #these are asking for custom methods, aka class methods. self. within a class
  #highest_rating: this method should return the highest value in the ratings column.
  #hint: if there is a minimum Active Record method, might there be a maximum method?

  def self.highest_rating
    self.maximum("rating")
  end

  #most_popular_show: this method should return the show with the highest rating.
  #hint: use the highest_rating method as a helper method.

  def self.most_popular_show
    self.find_by(rating: highest_rating)
  end

  #lowest_rating: returns the lowest value in the ratings column.

  def self.lowest_rating
    self.minimum("rating")
  end

  #least_popular_show: returns the show with the lowest rating.

  def self.least_popular_show
    self.find_by(rating: lowest_rating)
  end

  #ratings_sum: returns the sum of all of the ratings.

  def self.ratings_sum
    self.sum("rating")
  end

  #popular_shows: returns an array of all of the shows that have a rating greater than 5.
  #hint: use the where Active Record method.

  def self.popular_shows
    self.where("rating > 5")
  end

  #shows_by_alphabetical_order: returns an array of all of the shows sorted by alphabetical order according to their names.
  #hint: use the order Active Record method.

  def self.shows_by_alphabetical_order
    self.order(name: :asc)
  end
end
