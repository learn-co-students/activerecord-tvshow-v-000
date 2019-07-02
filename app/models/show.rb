class Show < ActiveRecord::Base
  def self.highest_rating
    show = Show.maximum(:rating)
  end

  def self.most_popular_show
  end

  def self.lowest_rating
    show = Show.minimum(:rating)
  end

  def self.least_popular_show
  end

  def self.ratings_sum
    ratings_sum = Show.sum(:rating)
  end

  def self.popular_shows
  end

  def self.shows_by_alphabetical_order
    ordered = Show.order(:name)
  end
end
