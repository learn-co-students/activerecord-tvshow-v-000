class Show < ActiveRecord::Base

  def highest_rating
    Show.maximum("rating")
    #return highest value in the ratings column use maximum method
  end

  def most_popular_show
    Show.highest_rating
    #return show with highest rating. #highest_rating is a helper method
  end

  def lowest_rating
    #returns lowest value in the ratings column
  end

  def least_popular_show
    #returns show with lowest rating. See #most_popular_show
  end

  def ratings_sum
    #returns the sum of all ratings
  end

  def popular_shows
    #returns an array of all the shows that have a rating greater than 5
    #use '#where' Active Record method
  end

  def shows_by_alphabetical_order
    #returns array of all of the shows in alpha order
    #use '#order' AR method
  end


end
