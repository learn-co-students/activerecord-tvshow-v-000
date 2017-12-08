require 'pry'

class Show < ActiveRecord::Base
  attr_accessor :name

  def self.highest_rating
    Show.maximum("rating")
  end

  def self.most_popular_show
    Show.name.maximum("rating")
  end

  def self.lowest_rating
    self.minimum("rating")
  end

  def self.least_popular_show
    Show.name.minimum(rating)
  end

  def self.ratings_sum
    Shows.sum("rating")
  end

  def self.popular_shows
    popular = []
    popular = Show.all.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    alpha = []
    alpha = Show.name.order("ASC")
  end
end
