class Show < ActiveRecord::Base
  def self.highest_rating
    show = Show.maximum(:rating)
  end

  def self.most_popular_show
    show = Show.maximum(:rating)
    most_pop = Show.find_by(rating: show)
    #self.where("rating = ?", self.highest_rating).first
  end

  def self.lowest_rating
    show = Show.minimum(:rating)
  end

  def self.least_popular_show
    show = Show.minimum(:rating)
    least_pop = Show.find_by(rating: show)
  end

  def self.ratings_sum
    ratings_sum = Show.sum(:rating)
  end

  def self.popular_shows
    show = Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    ordered = Show.order(:name)
  end
end
