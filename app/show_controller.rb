
def highest_rating
  show = Show.maximum("rating")

end
