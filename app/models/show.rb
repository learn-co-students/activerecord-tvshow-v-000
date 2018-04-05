require 'pry'

class Show < ActiveRecord::Base

  def self.highest_rating
  s = Show.maximum("rating")
    # m.save

  end

  def self.most_popular_show
  s =  Show.where(self.highest_rating).limit(1).to_a
  s[0]

  end

  def self.lowest_rating
    Show.minimum("rating")
  end

  def self.least_popular_show
    #  binding.pry
    m = Show.where(lowest_rating).order(rating: :asc).limit(1).to_a
     m[0]
  end


  def self.ratings_sum
    Show.sum("rating")
end

def self.popular_shows
  Show.where("rating > 5")
end

def self.shows_by_alphabetical_order
  Show.order(name: :asc).to_a

end


end
