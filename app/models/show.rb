class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    highest_rating = Show.highest_rating
    Show.where(rating: highest_rating)[0]
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    lowest_rating = Show.lowest_rating
    Show.where(rating: lowest_rating)[0]
  end

  def self.ratings_sum
    Show.all.sum(:rating)
  end

  def self.popular_shows
    Show.where('rating > 5')
  end

  def self.shows_by_alphabetical_order
    Show.all.order(name: :asc)
  end

end