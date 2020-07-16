class Show < ActiveRecord::Base

  def self.highest_rating
    Show.all.maximum(:rating)
  end

  def self.most_popular_show
    Show.where("rating = ?", highest_rating)[0] # why is [0] needed here?
  end

  def self.lowest_rating
    Show.all.minimum(:rating)
  end

  def self.least_popular_show
    Show.where("rating = ?", lowest_rating)[0]
  end

  def self.ratings_sum
    Show.all.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > 5") # how do I know this returns an array? And why would it?
  end # I just don't see this is action.

  def self.shows_by_alphabetical_order
    Show.order(:name)
  end
end
