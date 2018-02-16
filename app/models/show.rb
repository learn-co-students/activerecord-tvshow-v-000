class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.where('rating == ?', Show.highest_rating)
  end

  def self.lowest_rating
    Show.minimum(:rating).title
  end

  def self.least_popular_show
    Show.where('rating == ?', Show.lowest_rating)
  end

  def self.ratings_sum
  end

  def self.popular_shows
  end

  def self.shows_by_alphabetical_order
  end

end
