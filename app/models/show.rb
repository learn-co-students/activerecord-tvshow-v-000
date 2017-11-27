class Show < ActiveRecord::Base
  def self.highest_rating
    Show.all.maximum(:rating)
  end

  def self.most_popular_show
    rating = Show.all.maximum(:rating)
    show_array = Show.all.where(:rating => rating)
    show_array[0]
  end

  def self.lowest_rating
    Show.all.minimum(:rating)
  end

  def self.least_popular_show
    rating = Show.all.minimum(:rating)
    show_array = Show.all.where(:rating => rating)
    show_array[0]
  end

  def self.ratings_sum
    Show.all.sum(:rating)
  end

  def self.popular_shows
    show_array = Show.all.where("rating > ?", 5)
    show_array
  end

  def self.shows_by_alphabetical_order
    Show.all.order(name: :asc)
  end
end
