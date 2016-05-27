require 'pry'
public

def highest_rating
  Show.maximum(:rating)
end

def most_popular_show
  Show.where(rating: highest_rating)[0]
end

def lowest_rating
  Show.minimum(:rating)
end

def least_popular_show
  Show.where(rating: lowest_rating)[0]

end

def ratings_sum
  Show.sum(:rating)

end

def popular_shows
  Show.where('rating > 3 ')

end

def shows_by_alphabetical_order
  Show.order('name asc')
end
