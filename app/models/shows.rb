class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:ratings)
  end

  def self.most_popular_show
    Show.find_by(self.highest_rating)
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.find_by(self.lowest_rating)
  end

  def self.ratings_sum
    Show.where(:rating).count
  end

  def self.popular_shows
    Show.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    Show.order(name: :asc)
  end

end