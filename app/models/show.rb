class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    show = Show.where(self.highest_rating).limit(1).flatten
    show = show[0]
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    show = Show.where(self.lowest_rating).flatten
    show[2]
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    shows = Show.where(':ratings > ?', 5).order(":ratings", :desc)
    shows
  end

  def self.shows_by_alphabetical_order
    show = Show.order(:name)
  end
end
