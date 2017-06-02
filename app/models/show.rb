class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    self.where(rating = self.highest_rating).limit(1).take
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    # binding.pry
    self.order(rating: :asc).limit(1).take
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    # binding.pry
    Show.order("name")
  end





end
