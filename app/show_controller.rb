

  def highest_rating
    Show.maximum(:rating)
  end

  def most_popular_show

  end

  def lowest_rating
    Show.minimum(:rating)
  end

  def least_popular_show

  end

  def ratings_sum
    Show.sum(:rating)
  end

  def popular_shows
    Song.where("rating > 5").order(rating: :asc)
  end
