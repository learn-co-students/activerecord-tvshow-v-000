class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.where("rating = ?", self.highest_rating)[0]
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    self.where("rating = ?", self.lowest_rating)[0]
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    self.order(:name)
  end

end

# You'll be defining the following methods:
#
# #highest_rating: this method should return the highest value in the ratings column. hint: if there is a #minimum Active Record method, might there be a #maximum method?
# #most_popular_show: this method should return the show with the highest rating. hint: use the #highest_rating method as a helper method.
# #lowest_rating: returns the lowest value in the ratings column.
# #least_popular_show: returns the show with the lowest rating.
# #ratings_sum: returns the sum of all of the ratings.
# #popular_shows: returns an array of all of the shows that have a rating greater than 5. hint: use the #where method Active Record method.
# #shows_by_alphabetical_order: returns an array of all of the shows sorted by alphabetical order according to their names. hint: use the #order Active Record method.