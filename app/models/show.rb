class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum("rating")
  end

  def self.most_popular_show
    find_by(rating: self.highest_rating)
  end

  def self.lowest_rating
    self.minimum("rating")
  end

  def self.least_popular_show
    low_rating = self.lowest_rating             #i used a diferent strategy than how i got #most_popular_show
    self.where("rating = ?", low_rating).first  # shouldn't need ? because I wouldn't be getting any user inputs
  end

  def self.ratings_sum
    self.sum("rating")
  end

  def self.popular_shows
    self.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    self.order("name")
  end
end
