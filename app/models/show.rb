class Show < ActiveRecord::Base
# -------------
# not part of the test spec
  def self.rating_desc
    self.order(rating: :desc)
  end
# ------------

  def self.most_popular_show
    self.rating_desc.limit(1).first
  end

  def self.highest_rating
    self.most_popular_show.rating
  end

  def self.least_popular_show
    self.rating_desc.reverse.first
  end

  def self.lowest_rating
    self.least_popular_show.rating
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.rating_desc.where("rating > ?", '5')
  end

  def self.shows_by_alphabetical_order
  self.order(name: :asc)
  end

end
