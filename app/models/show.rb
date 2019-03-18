class Show < ActiveRecord::Base 

  def self.highest_rating
    self.maximum(:rating) 
  end
  
  def self.most_popular_show
    self.where("rating = ?", self.highest_rating).first
  end
  #look into solution/syntax/logic 
  
  def self.lowest_rating
    self.minimum(:rating)
  end 
  
  def self.least_popular_show 
    self.where("rating = ?", self.lowest_rating).first
  end
  
  def self.ratings_sum 
    self.sum(:rating)
  end
    
  def self.popular_shows
    show = Show.where("rating >= ?", 5)
  end 
  #write/understand method 
  
  
  def self.shows_by_alphabetical_order 
    Show.order(name: :asc)
  end
  #write/understand method/syz
end