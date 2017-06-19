require "pry"

class Show < ActiveRecord::Base
  def self.highest_ratings
    binding.pry
    Show.maximum(:rating)
  end

  def self.most_popular_show

  end

end
