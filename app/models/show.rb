class Show < ActiveRecord::Base

  def highest_rating
   Show.maximum(:ratings)
  end

  def most_popular_show
    Show.order(:ratings).first
  end

  def lowest_rating
    Show.minimum(:ratings)
  end

  def least_popular_show
    Show.order(:ratings).last
  end

  def ratings_sum
    Show.sum(:ratings)
  end

  def popular_shows
    Show.where("ratings > ?", 5)
  end

  def shows_by_alphabetical_order
    Show.order(:name)
  end

end
