# In this file, you will define a `Show` class that inherits from `ActiveRecord::Base`.
class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.highest_rating(:name)

  end

end
