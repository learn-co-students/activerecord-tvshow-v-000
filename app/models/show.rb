require 'pry'
class Show < ActiveRecord::Base

  def self::highest_rating
    showMax = Show.maximum(:rating)

    showMax

  end

  def Show::most_popular_show
    showMax = Show.maximum(:rating)
    showMaxName = Show.where("rating = ?", showMax)
    showMaxName[0]
  end

  def self::lowest_rating
    showMin = Show.minimum(:rating)
    showMin
  end

  def self::least_popular_show
    showMin = Show.minimum(:rating)
    showMinName = Show.where("rating = ?", showMin)
    showMinName[0]
  end

  def self::ratings_sum

    Show.sum(:rating)

  end



  def self::popular_shows
    Show.where("rating > ?", 5)
  end

  def self::shows_by_alphabetical_order
    shows_alph = Show.order(name: :asc)

    shows_alph


  end



end
