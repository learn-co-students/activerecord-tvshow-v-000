require 'pry'
def highest_rating
  Show.maximum(:rating)
end

def most_popular_show
  Show.name.highest_rating
end

def lowest_rating
  Show.minimum(:rating)
end

def least_popular_show
  Show.name.lowest_rating
end

def ratings_sum
  Shows.sum(:rating)
end

def popular_shows
  Show.all.where("rating > ?", 5)
end

def shows_by_alphabetical_order
  Show.order("name ASC")
end
# create_table :shows do |t|
#   t.string  :name
#   t.string :network
#   t.string :day
#   t.integer :rating
