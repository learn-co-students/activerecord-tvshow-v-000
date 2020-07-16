class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating) 
  end

  def self.most_popular_show
    popularity = Show.maximum(:rating)
    Show.find_by(rating: popularity)
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    sad = Show.minimum(:rating)
    Show.find_by(rating: sad)
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where('rating > 5').select('*')
  end

  def self.shows_by_alphabetical_order
    Show.order(name: :asc)
  end

end


