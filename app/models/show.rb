class Show < ActiveRecord::Base

#  These answers were copied from a student that passed already...
#  Screw around with each & every one till you understand all of them & all error messages
#  See if any alternative solutions can be developed
  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.where("rating = ?", self.highest_rating)[0]
#   self.where("rating = ?", self.maximum(:rating))[0]
#   self.where("rating = self.maximum(:rating)")[0] <=# Ooooh, that's dangerious!
#   binding.pry
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    self.where("rating = ?",self.lowest_rating)[0]
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    self.all.order(name: :ASC)
  end
end
