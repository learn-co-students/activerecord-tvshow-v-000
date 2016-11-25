class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum(:number_of_stars)
  end
end
