class Show < ActiveRecord::Base

  #highest_rating: returns the highest value in the ratings column.
  def self.highest_rating
    self.maximum('rating')
  end
  #most_popular_show: returns the show with the highest rating.
  def self.most_popular_show
    Show.find_by rating: self.highest_rating
  end

  #lowest_rating: returns the lowest value in the ratings column.
  def self.lowest_rating
    self.minimum('rating')
  end

  #least_popular_show: returns the show with the lowest rating.
  def self.least_popular_show
    Show.find_by rating: self.lowest_rating
  end

  #ratings_sum: returns the sum of all of the ratings.
  def self.ratings_sum
    self.sum('rating')
  end

  #popular_shows: returns an array of all of the shows that have a rating greater than 5.
  def self.popular_shows
    Show.where("rating > ?", 5)
  end

  #shows_by_alphabetical_order: returns an array of all of the shows sorted by alphabetical order according to their names.
  def self.shows_by_alphabetical_order
    Show.order("name ASC")
  end

end
