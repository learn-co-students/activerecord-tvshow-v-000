class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum('rating')
  end

  def self.most_popular_show
    Show.order('rating DESC').first
  end

  def self.lowest_rating
    Show.minimum('rating')
  end

  def self.least_popular_show
    Show.order('rating ASC').first
  end

  def self.ratings_sum
    Show.sum('rating')
  end

  def self.popular_shows
    pop_shows_array = Array.new
    pop_shows_1 = Show.where('rating > ?', 5)[0].name
    pop_shows_2 = Show.where('rating > ?', 5)[1].name
    pop_shows_array.push(pop_shows_1)
    pop_shows_array.push(pop_shows_2)
    pop_shows_array
    binding.pry
  end

end
