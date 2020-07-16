#####::highest_rating
#returns the TV show with the highest rating
#####::most_popular_show
#returns the tv show with the highest rating
#####::lowest_rating
# returns the TV show with the lowest rating
#####::least_popular_show
#returns the tv show with the lowest rating
#####::ratings_sum
#returns the sum of all the ratings of all the tv shows
#####::popular_shows
# returns an array of all of the shows with a rating above 5
#####::shows_by_alphabetical_order
#  returns an array of all of the shows, listed in alphabetical order


class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.where(rating: maximum(:rating)).first
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.where(rating: minimum(:rating)).first
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.order(:name)
  end
end
