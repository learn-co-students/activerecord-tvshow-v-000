

# Methods: 
# - highest_rating - return highest value of ratings column 
# - most popular show - highest rating = helper method 
# - lowest rating (lowest value in ratings)
# - least popular show (lowest rating)
# - ratings sum 
# - popular shws (returns array of all shows > 5)
#   use where 
#   -shows by alphabetical order 

class Show < ActiveRecord::Base 

  def self.highest_rating
    self.maximum(:rating) 
  end
  
  
    
  
end