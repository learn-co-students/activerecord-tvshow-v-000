def highest_rating
  Show.all.maximum
end

def most_popular_show
  Show.highest_rating
end
