require 'pry'

class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.most_popular_show
    self.find_by(rating: highest_rating)
    # or self.order(rating: :desc).first
    # or self.order(rating: asc).last
  end

  def self.least_popular_show
    self.find_by(rating: lowest_rating)
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > 5").order(rating: :desc)
  end

  def self.shows_by_alphabetical_order
    self.order(name: :asc)
  end


end
