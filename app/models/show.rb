#contains models - In sinatra contains MVC
#scope methods - way of narrowing down a query
class Show < ActiveRecord::Base

  def self.highest_rating
    #needs to return show name
    self.maximum(:rating)
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.most_popular_show
      self.where(highest_rating).first
  end

  def self.least_popular_show
    self.where("rating = ?", lowest_rating).first
  end

  def self.popular_shows
    self.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    self.order(:name)
  end

end
