require 'pry'

class Show < ActiveRecord::Base
  attr_accessor :name
# could be self, too. 
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.find_by rating: highest_rating 
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.find_by rating: lowest_rating
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
   Show.all.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    self.order(:name)
  end
end
