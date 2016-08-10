class Show < ActiveRecord::Base
  def self.highest_rating
    show = Show.order(rating: :desc).first
    show.rating
  end

  def self.most_popular_show
    show = Show.order(rating: :desc).first
    show
  end

  def self.lowest_rating
    show = Show.order(rating: :desc).last 
    show.rating
  end

  def self.ratings_sum
    show = Show.sum(:rating)
    show
  end

  def self.least_popular_show
    show = Show.order(rating: :desc).last 
    show
  end

  def self.popular_shows
    show = Show.where("rating > ?", 5)
    show
  end

  def self.shows_by_alphabetical_order
    show = Show.order(name: :asc)
    show
  end
end







