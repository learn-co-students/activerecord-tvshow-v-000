class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum("rating")
    # binding.pry
  end
end