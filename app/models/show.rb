class Show < ActiveRecord::Base

  def Show::highest_rating
    show = Show.order(:rating).last.rating
  end

  def Show::most_popular_show
    show = Show.order(:rating).last
  end

  def Show::lowest_rating
    show = Show.order(:rating).first.rating
  end

  def Show::least_popular_show
    show = Show.order(:rating).first
  end

  def Show::ratings_sum
    sum = Show.sum(:rating)
  end

  def Show::popular_shows
    array = Show.where("rating > ?", 5)
  end

  def Show::shows_by_alphabetical_order
    Show.order("name ASC")
  end

end
