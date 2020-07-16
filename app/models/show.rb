class Show < ActiveRecord::Base

  def self.highest_rating
    show = Show.maximum("rating")
  end
  def self.most_popular_show
    # order(:rating).last
    show = Show.where("rating = ?", self.highest_rating).first
  end
  def self.lowest_rating
    show = minimum("rating")
  end
  def self.least_popular_show
    order(:rating).first
    # show = Show.where("rating = ?", self.lowest_rating).first
  end
  def self.ratings_sum
    sum = Show.sum("rating")
  end
  def self.popular_shows
    show = Show.where("rating > 5")
  end
  def self.shows_by_alphabetical_order
    order = Show.order("name")
  end
end
