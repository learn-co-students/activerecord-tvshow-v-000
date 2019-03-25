class Show < ActiveRecord::Base
  def highest_rating
    self.minimum(:rating)
  end
end
