class Show < ActiveRecord::Base

  def self.highest_rating
    show = Show.maximum(:rating)
  end

  def self.most_popular_show
    show = Show.maximum(:rating)
    most_popular_show = Show.find_by(rating: show)
  end

  def self.lowest_rating
    show = Show.minimum(:rating)
  end

  def self.least_popular_show
    show = Show.minimum(:rating)
    least_popular_show = Show.find_by(rating: show)
  end
  
  def self.ratings_sum
    ratings_sum = Show.sum(:rating)
  end
  
  def self.popular_shows 
    popular_show_array = Show.where ("rating > 5")
  end

  def self.shows_by_alphabetical_order
    alpha_order = Show.order (:name)
  end
  
end
