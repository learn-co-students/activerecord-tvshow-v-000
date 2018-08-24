class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.highest_rating(:name)
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.lowest_rating(:name)
  end

  def self.ratings_sum
  end

  def self.popular_shows
  end

  def self.shows_by_alphabetical_order
    Show.sort(:name)
  end

end
