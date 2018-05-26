class Show < ActiveRecord::Base

  def self.highest_rating
    self.order(rating: :asc).last[:rating]
  end

  def self.most_popular_show
    self.order(rating: :asc).last
  end

  def self.lowest_rating
      self.order(rating: :asc).first[:rating]
  end

  def self.least_popular_show
      self.order(rating: :desc).last
  end

  def self.ratings_sum
      self.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > 5").order(rating: :desc)
  end

  def self.shows_by_alphabetical_order
    self.order(name: :asc)
  end

end
