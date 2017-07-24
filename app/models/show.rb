require 'pry'
class Show < ActiveRecord::Base
  
  def Show::highest_rating
    show = Show.maximum(:rating)
  end
  
  def Show::most_popular_show
    Show.all.each do |s|
      if s.rating == 10 
        return s
      end
    end
  end
  
  def Show::lowest_rating
    show = Show.minimum(:rating)
  end
  
  def Show::least_popular_show
    Show.all.each do |s|
      if s.rating == Show::lowest_rating 
        return s
      end
    end
  end
  
  def Show::ratings_sum 
    Show.sum(:rating)
  end
  
  def Show::popular_shows
    Show.where("rating > ?", 5)
  end
  
  def Show::shows_by_alphabetical_order
    Show.order(:name)
  end
 
  
end