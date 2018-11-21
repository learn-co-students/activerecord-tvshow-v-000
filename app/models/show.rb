class Show < ActiveRecord::Base
  def self.highest_rating
    show = self.order(rating: :desc).take
    show.rating
  end

  def self.most_popular_show
    self.order(rating: :desc).take
  end

  def self.lowest_rating
    show = self.order(rating: :asc).take
    show.rating
  end

  def self.least_popular_show
    self.order(rating: :asc).take
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
