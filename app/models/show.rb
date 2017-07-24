class Show < ActiveRecord::Base
  def self.highest_rating
    self.all.order('rating DESC').first.rating
  end

  def self.most_popular_show
    self.all.order('rating DESC').first
  end

  def self.lowest_rating
    self.all.order('rating ASC').first.rating
  end

  def self.least_popular_show
    self.all.order('rating ASC').first
  end

  def self.ratings_sum
    all_ratings = self.all.collect do |show|
      show.rating
    end
    sum = 0
    all_ratings.collect do |rating|
      sum += rating
    end
    sum
  end

  def self.popular_shows
    self.all.where('rating > ?', 5)
  end

  def self.shows_by_alphabetical_order
    self.all.order('name ASC')
  end
end