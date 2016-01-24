class Show < ActiveRecord::Base
  def self.highest_rating
    #maximum
    Show.maximum(:rating)
  end

  def self.most_popular_show
    # binding.pry
    Show.order("rating DESC").limit(1).to_a[0]
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.order("rating ASC").limit(1).to_a[0]
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where('rating > ?', 4)
    #rating greater than 5
  end

  def self.shows_by_alphabetical_order
    #order

    Show.order("name ASC")
  end
end