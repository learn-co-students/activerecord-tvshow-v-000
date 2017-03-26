class Show < ActiveRecord::Base #'col' and :col both work. Doesn't work once you start working with commands though.

  def self.highest_rating
    Show.maximum('rating')
  end

  def self.most_popular_show
    #binding.pry
    Show.order('rating').last
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.order(rating: :desc).last
  end

  def self.ratings_sum
    Show.sum('rating')
  end

  def self.popular_shows
    #binding.pry
    Show.where('rating > 5') #??
  end

  def self.shows_by_alphabetical_order
    Show.order(name: :asc)
  end

end
