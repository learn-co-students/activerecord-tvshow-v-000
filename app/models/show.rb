class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    show_info = Show.where("rating = ?", Show.highest_rating)
    show_info.to_a.first
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    show_info = Show.where("rating = ?", Show.lowest_rating)
    show_info.to_a.first
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > ?", 5).to_a
  end

  def self.shows_by_alphabetical_order
    Show.order(name: :asc)
  end
end
