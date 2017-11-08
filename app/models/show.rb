class Show < ActiveRecord::Base
  def highest_rating
    self.maximum(:rating)
  end

  def most_popular_show
    self.where(highest_rating)
  end

  def lowest_rating
    self.minimum(:rating)
  end

  def least_popular_show
    self.where(lowest_rating)
  end

  def ratings_sum
    self.sum(:rating)
  end

  def popular_shows
    self.where("rating > ?", 5)
  end

  def shows_by_alphabetical_order
    self.order(name: :asc)
  end
end
