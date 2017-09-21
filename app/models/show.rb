class Show < ActiveRecord::Base

  def highest_rating
    Show.maximum(rating)
  end

  def most_popular_show
    Show.maximum(rating).name
  end

  def lowest_rating
    Show.minimum(rating)
  end

  def least_popular_show
    Show.minimum(rating).name
  end

  def ratings_sum
  end

  def popular_shows
  end

  def shows_by_alphabetical_order
  end

end
