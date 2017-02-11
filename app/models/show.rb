class Show < ActiveRecord::Base

def highest_rating
  self.maximum(:rating)
end

def most_popular_show
  highest_rating(:name)
end

def lowest_rating
  self.minimmum(:rating)
end

def least_popular_show
  lowest_rating(:name)
end

def ratings_sum
  self.sum(:rating)
end

def popular_shows
  self.where("number_of_stars > ?", 5)
end

def shows_by_alphabetical_order
  self.order(:name)
end

end
