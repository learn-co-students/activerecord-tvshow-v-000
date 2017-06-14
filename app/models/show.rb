class Show < ActiveRecord::Base

  def self.highest_rating
    @highest = Show.maximum("rating")
  end

  def self.most_popular_show
    Show.where("rating = ?", @highest).flatten.first
  end

  def self.lowest_rating
    @lowest = Show.minimum("rating")
  end

  def self.least_popular_show
    Show.where("rating = ?", @lowest).flatten.first
  end

  def self.ratings_sum
    Show.sum("rating")
  end

  def self.popular_shows
    Show.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    Show.order("name ASC")
  end

end
