class Show < ActiveRecord::Base

  #highest rating
  def self.highest_rating
    Show.maximum("rating")
  end

  #most popular show
  def self.most_popular_show
    rating = Show.highest_rating
    Show.find_by(rating: rating)
  end

  #lowest rating
  def self.lowest_rating
    Show.minimum("rating")
  end

  #least popular show
  def self.least_popular_show
    rating = Show.lowest_rating
    Show.find_by(rating: rating)
  end

  #ratings sum
  def self.ratings_sum
    Show.sum("rating")
  end

  #popular shows: rating > 5
  def self.popular_shows
    Show.where("rating > 5")
  end

  #shows by alphabetical order
  def self.shows_by_alphabetical_order
    Show.order(name: :asc)
  end
end
