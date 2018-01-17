class Show < ActiveRecord::Base

  def self.highest_rating
  #return the highest value in the ratings column
  maximum('rating')
  end

  def self.most_popular_show
    #return the show with the highest rating
    find_by(rating: highest_rating)
  end

  def self.lowest_rating
    #returns the lowest value in the ratings column.
    minimum(:rating)
  end

  def self.least_popular_show
    #returns the show with the lowest rating.
      find_by(rating: lowest_rating)
  end

  def self.ratings_sum
    #returns the sum of all of the ratings.
    sum(:rating)
  end

  def self.popular_shows
    #returns an array of all of the shows that have a rating greater than 5.
    where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    #returns an array of all of the shows sorted by alphabetical order according to their names
    order(:name)
  end
end
