class Show < ActiveRecord::Base

  def self.highest_rating
    # self.maximum(:rating)
    Show.maximum(:rating)
  end

  def self.most_popular_show
    # Show.find_by(self.highest_rating)
    Show.find_by(rating: self.highest_rating)
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.find_by(rating: self.lowest_rating)
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    # all = []
    # Show.where('rating > 5').each do |show|
    #   all << show
    # Show.where('rating > 5')
    Show.where('rating > 5')
  end

  def self.shows_by_alphabetical_order
    Show.order(:name)
    #self.order('name ASC')
  end
end
