class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum("rating")
  end

  def self.most_popular_show
    Show.where("rating = ?", 10).order(name: :desc).first
    # binding.pry
  end
end