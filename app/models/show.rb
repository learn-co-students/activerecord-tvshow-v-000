class Show < ActiveRecord::Base

  def Show::highest_rating
    Show.maximum(:rating)
  end #::highest_rating

  def Show::most_popular_show
    Show.find_by(rating: Show::highest_rating)
  end #::most_popular_show

  def Show::lowest_rating
    Show.minimum(:rating)
  end #::lowest_rating

  def Show::least_popular_show
    Show.find_by(rating: Show::lowest_rating)
  end #::least_popular_show

  def Show::ratings_sum
    Show.sum(:rating)
  end #::ratings_sum

  def Show::popular_shows
    Show.where('rating > 5')
  end #::popular_shows

  def Show::shows_by_alphabetical_order
    Show.order('name ASC')
  end #::shows_by_alphabetical_order

end #class Show
