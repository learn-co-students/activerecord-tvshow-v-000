class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:ratings)
  end

  def self.most_popular_show
    self.find_by(ratings: self.highest_rating)
  end

  def self.lowest_rating
    self.mininum(:ratings)
  end

  def self.least_popular_show
    self.find_by(ratings: self.lowest_rating)
  end

  def self.ratings_sum
    self.sum(:ratings)
  end

  def self.shows_by_alphabetical_order
    self.all.order
  end

end
