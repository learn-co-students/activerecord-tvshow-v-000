class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum("rating")
    #return highest value in the ratings column use maximum method
  end

  def self.most_popular_show
    self.where("rating = ?", highest_rating).first
    #return show with highest rating. #highest_rating is a helper method
  end

  def self.lowest_rating
    self.minimum("rating")
    #returns lowest value in the ratings column
  end

  def self.least_popular_show
    self.where("rating = ?", lowest_rating).last
    #returns show with lowest rating. See #most_popular_show
  end

  def self.ratings_sum
    self.sum("rating")
    #returns the sum of all ratings
  end

  def self.popular_shows
    self.where("rating > ?", 5)#returns an array of all the shows that have a rating greater than 5
    #use '#where' Active Record method
  end

  def self.shows_by_alphabetical_order
    self.order(name: :asc)
    #returns array of all of the shows in alpha order
    #use '#order' AR method
  end


end
