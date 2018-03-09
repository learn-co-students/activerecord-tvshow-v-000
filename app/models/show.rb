require 'pry'
class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum("rating")
  end

  def self.most_popular_show
    show = Show.maximum("rating")
    show.name
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    m = Show.minimum(:rating)
    m.name
  end

  def self.ratings_sum
    Show.sum("rating")
  end

  def self.popular_shows
    Show.all.each do |m|
      shows << m.where("rating > 5")
    end
  end



end
