def highest_rating
   Shows.order(rating: :desc).first.rating
end
def most_popular_show
end
def least_popular_show
end
