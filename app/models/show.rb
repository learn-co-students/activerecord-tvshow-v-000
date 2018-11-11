class Show < ActiveRecord::Base
  
  def self.highest_rating
    # hint: if there is a minimum Active Record method, might there be a maximum method?
    self.maximum(:rating)
  end
  
  def self.most_popular_show
    # hint: use the highest_rating method as a helper method.
    #self.highest_rating.first doesn't work
    self.where("rating = ?", self.highest_rating).first
    #binding.pry
  end
  
  def self.lowest_rating
    # opposite of self.highest_rating
    self.minimum(:rating)
  end
  
  def self.least_popular_show
    # opposite of self.most_popular_show
    self.where("rating = ?", self.lowest_rating).first
  end
  
  def self.ratings_sum
    self.sum(:rating)
  end
  
  def self.popular_shows
    self.where("rating > ?", 5)
  end
  
  def self.shows_by_alphabetical_order
    #self.where("name = ?", "ORDER BY name") doesn't work
    self.order(:name)
  end
  
end