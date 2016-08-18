class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show  # want name of show with highest rating
    Show.order(rating: :desc).first
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show # name 
    Show.order(rating: :asc).first
  end

  def self.ratings_sum 
    Show.sum(:rating)
  end

  def self.popular_shows # get an array of all shows with rating > 5
    Show.where( "rating > ?", 5 )
  end

  def self.shows_by_alphabetical_order#all show names in alpha order
    Show.order(name: :asc)
  end


end