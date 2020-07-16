class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.most_popular_show
    @maxvalue = self.highest_rating
    self.where(:rating => @maxvalue)[0]
  end

  def self.least_popular_show
    @minvalue = self.lowest_rating
    self.where(:rating => @minvalue)[0]
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    self.order(name: :asc)
  end

end
