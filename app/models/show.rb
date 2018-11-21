class Show < ActiveRecord::Base 
  
  def self.highest_rating
    Show.maximum(:rating)
  end
  
  def self.most_popular_show
    popular_show = Show.find_by(self.highest_rating)
    popular_show
  end
  
  def self.lowest_rating
    Show.minimum(:rating)
  end 
  
  def self.least_popular_show
    not_popular_show = Show.find_by("rating = ?", self.lowest_rating)
    not_popular_show
  end 
  
  def self.ratings_sum 
    the_sum = Show.sum(:rating)
    the_sum
  end
  
  def self.popular_shows
    Show.where("rating > 5")
  end
  
  def self.shows_by_alphabetical_order
    alphabet = Show.order(:name)
    alphabet
  end
end