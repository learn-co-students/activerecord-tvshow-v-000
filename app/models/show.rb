class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.where("rating = ?", self.highest_rating).first ##<ActiveRecord::Relation [#<Show id: 18, name: "Rick and Morty", network: "Adult Swim", day: "Thursday", rating: 10, season: nil>]>
    #self.find_by rating: "#{self.highest_rating}" ##<Show id: 18, name: "Rick and Morty", network: "Adult Swim", day: "Thursday", rating: 10, season: nil>
    #to use "where" you need to get rid of the ActiveRecords part of the result, use "first"
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    self.where("rating = ?", self.lowest_rating).first
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
