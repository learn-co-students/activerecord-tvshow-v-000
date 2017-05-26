class Show < ActiveRecord::Base

  def highest_rating
    self.class.maximum(:rating)
  end

  def most_popular_show
    self.class.highest_rating.name
  end

  def lowest_rating
    self.class.minimum(:rating)
  end

  def least_popular_show
    self.class.lowest_rating.name
  end

  def ratings_sum
    self.class.sum(:rating)
  end

  def popular_shows
    self.class.where("rating > ?", 5)
  end

  def shows_by_alphabetical_order
    self.class.order(:name)
  end

end
