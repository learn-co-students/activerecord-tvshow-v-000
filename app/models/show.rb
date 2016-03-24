class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.where("rating = #{highest_rating}").first
    # can also write:
    # Show.where(rating: highest_rating).first
    # or
    # order("rating DESC").first
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.where("rating = #{lowest_rating}").first
    # can also write:
    # Show.where(rating: lowest_rating).first
    # or
    # order("rating ASC").first
  end

  def self.ratings_sum
    Show.sum(:rating)
    # or
    # sum("rating")
  end

  def self.popular_shows
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.order("name ASC")
    # can also write:
    # Show.order(name: :asc)
  end
end