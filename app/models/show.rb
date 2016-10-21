class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    show = Show.maximum(:rating)

  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show

  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    shows = Show.where(':ratings > ?', 5)
    shows.to_a

  end

  def self.shows_by_alphabetical_order
    show = Show.order(:name)
  end
end
