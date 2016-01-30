class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    show = Show.find_by(rating = self.highest_rating)
    show
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    show = Show.where(:rating => self.lowest_rating)
    show.first
    # pay attention to return values. This method returned an array
    # also, I could have used same technique as most_popular_show but tried
    # something different
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where('rating > 5')
  end

  def self.shows_by_alphabetical_order
    Show.all.order(:name)
  end

end