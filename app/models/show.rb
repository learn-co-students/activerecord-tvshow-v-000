class Show < ActiveRecord::Base
end

def Show::highest_rating
  Show.maximum("highest_rating")
end
