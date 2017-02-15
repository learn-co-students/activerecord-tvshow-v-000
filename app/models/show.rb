class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    #self.maximum(:rating)
    max = self.highest_rating
    self.where('rating = ?', max)[0]
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    #self.minimum(:rating)
    min = self.lowest_rating
    self.where('rating = ?', min)[0]
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where('rating > ?', 5)
  end

  def self.shows_by_alphabetical_order
    self.all.order(name: :asc)
  end

end
