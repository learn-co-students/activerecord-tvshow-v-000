class Show < ActiveRecord::Base
  
  def self.highest_rating 
    Show.maximum(:ratings)
  end

end
