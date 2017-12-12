class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    #binding.pry
    highest = Show.where(maximum(:rating)).first #'#{highest_rating}'

  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    #lowest = Show.order(rating: :asc).limit(1)
    lowest = Show.where(minimum(:rating)).order(rating: :asc).first
    #binding.pry
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    pop_shows = Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.order(name: :asc).flatten
  end
end
