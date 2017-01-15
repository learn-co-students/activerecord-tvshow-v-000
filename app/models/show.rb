class Show < ActiveRecord::Base
  def self.highest_rating
    show = Show.maximum('rating')
  end

  def self.most_popular_show
    show = Show.find_by(rating: "#{self.highest_rating}")
  end

  def self.lowest_rating
    show = Show.minimum('rating')
  end

  def self.least_popular_show
    show = Show.find_by(rating: "#{self.lowest_rating}")
  end

  def self.ratings_sum
    show = Show.sum(:rating)
  end

  def self.popular_shows
    show = Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    show = Show.all.order(name: :asc)
  end
end
