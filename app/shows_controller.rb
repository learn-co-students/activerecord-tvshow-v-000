def self.highest_rating
  Show.maximum(:rating)
end

def self.most_popular_show
  Show.where(:rating = Show.highest_rating).name
end
