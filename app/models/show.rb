class Show < ActiveRecord::Base

  def self.highest_rating
    high_rating = self.maximum(:rating)
  end

  def self.most_popular_show
    show = self.where(rating: highest_rating)[0]
  end

  def self.lowest_rating
    low_rating = self.minimum(:rating)
  end

  def self.least_popular_show
    show = self.where(rating: lowest_rating)[0]
  end

  def self.ratings_sum
    sum_ratings = self.sum(:rating)
  end

  def self.popular_shows
    pop_shows = self.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    shows_alpha = self.order(name: :asc)
  end

end
