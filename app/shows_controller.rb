
def highest_rating
  Show.all.maximum(:rating)

end

def most_popular_show

end

def lowest_rating
  Show.all.minimum(:rating)

end

def least_popular_show

end

def ratings_sum

end

def popular_shows

end

def shows_by_alphabetical_order

end
