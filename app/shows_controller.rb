  def highest_rating
    Show.maximum(:rating)
  end

  def most_popular_show
    Show.highest_rating.name
  end

  def lowest_rating
    Show.minimum(:rating)
  end

  def least_popular_show
    Show.lowest_rating.nameS
  end

  def ratings_sum
    Show.sum(:rating)
  end

  def popular_shows
    Show.where("rating > ?", 5)
  end

  def shows_by_alphabetical_order
    Show.order(:name)
  end
