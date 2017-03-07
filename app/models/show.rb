require 'pry'
class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.most_popular_show
    # top_rating = self.highest_rating
    # top_show = self.find_by(rating: top_rating)
    show = self.order(rating: :desc).limit(1)[0]
  end

  def self.least_popular_show
    show = self.order(rating: :asc).limit(1).first
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    self.order(name: :asc)
  end
end
