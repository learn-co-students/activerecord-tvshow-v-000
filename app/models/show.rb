class Show < ActiveRecord::Base
  def highest_rating
    Show.maximum(:rating)
  end

  def most_popular_show
    Show.select(:name).where(highest_rating)
  end

  def lowest_rating
    Show.minimum(:rating)
  end

  def least_popular_show
    Show.select(:name).where(lowest_rating)
  end

  def ratings_sum
    Show.sum(:rating)
  end

end
