class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.shows_by_alphabetical_order
    self.order(name: :asc)
  end

  def self.most_popular_show
    self.where(self.highest_rating).first
  end

  def self.least_popular_show
    self.order(:rating).first
  end

  def self.popular_shows
    self.where('rating > 5')
  end

end
