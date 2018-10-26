class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.where("rating = ?", self.highest_rating).first
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    self.where("rating = ?", self.lowest_rating).first
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > ?", 5)
  end
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

  def self.shows_by_alphabetical_order
    self.order(:name)
  end
=======
>>>>>>> 40afb927291ba5c5df791d12c699f3515cae1685
=======
>>>>>>> 40afb927291ba5c5df791d12c699f3515cae1685
=======
>>>>>>> 40afb927291ba5c5df791d12c699f3515cae1685
end
