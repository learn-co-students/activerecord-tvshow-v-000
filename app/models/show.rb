class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.find_by rating: highest_rating
    # Show.where("rating = ?", Show.highest_rating)[0]  #alt method
    # Show.where("rating = ?", self.highest_rating).first  #alt method
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.find_by rating: lowest_rating
    # Show.where("rating = ?", Show.highest_rating)[0]  #alt method
    # Show.where("rating = ?", self.highest_rating).first  #alt method
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    # Show.where("rating = ?", Show.rating > 5)
    # Show.find_by rating where rating > 5
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.all.order(:name)
  end

end
