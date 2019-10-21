class Show < ActiveRecord::Base 
  
  
  def self.highest_rating
    Show.maximum(:rating)   #highest value in ratings column
  end 
  
  def self.most_popular_show
    Show.where(rating: highest_rating).first
  end 

  
  def self.lowest_rating
    Show.minimum(:rating)
  end 
  
  
  
  
end 