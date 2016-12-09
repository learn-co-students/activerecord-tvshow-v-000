class Show < ActiveRecord::Base

  # #highest_rating: this method should return the highest value in the ratings column. hint: if there is a #minimum Active Record method, might there be a #maximum method?
  def highest_rating
    Show.maximum(:ratings)
  end

  def most_popular_show
    Show.highest_rating.name
  end

  def lowest_rating
    Show.minimum(:ratings)
  end

  def least_popular_show
    Show.lowest_rating.name
  end
end