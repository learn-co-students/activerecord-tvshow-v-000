class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum("rating")
  end

  def self.most_popular_show
    #Show.maximum("name")
    #Show.name.highest_rating.find_by(name)
    #show = Show(name).highest_rating
    #Show.find(highest_rating).name
    #Show.find("rating").maximum("id")
    #Show.find("id" == highest_rating).name
    #Show.highest_rating(name)
    #Show.first.id
    #Show.highest_rating(name)
    #Show.highest_rating(attributes)
    Show.first
  end

  def self.lowest_rating
    Show.minimum("rating")
  end

  def self.least_popular_show
    Show.order(rating: :desc).last
  end

  def self.ratings_sum
    Show.sum("rating")
  end

  def self.popular_shows
    #Show.order("name")where ("rating") > 5
    #Show.where(("rating") > 5).order("name")
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.order("name")
  end

end
