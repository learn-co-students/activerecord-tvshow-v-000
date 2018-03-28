
class Show < ActiveRecord::Base

  def self.highest_rating
   self.maximum("rating")
  end


  def self.most_popular_show
    Show.find_by(rating: self.maximum("rating"))

#Break down.
# we Go into class(Show) target the rating, then
# find the highest rating in that collection and return it
  end


  def self.lowest_rating
    self.minimum("rating")

  end


  def self.least_popular_show
   Show.find_by(rating: self.minimum("rating"))
  end

  def self.ratings_sum
    self.sum("rating")
  end


  def self.popular_shows
    binding.pry
    self.where(rating > 5)

  end

  def self.shows_by_alphabetical_order

  end

end
