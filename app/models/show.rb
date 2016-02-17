class Show < ActiveRecord::Base
  # attr_accessor :name, :day, :network, :rating
  #
  # def initialize(name:, day:, network:, rating:)
  #   @name = name
  #   @day = day
  #   @network = network
  #   @rating = rating
  # end

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.order(rating: :desc).first
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    self.order(:rating).first
  end

  def self.popular_shows
    self.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    self.order(:name)
  end

  def self.ratings_sum
    self.sum(:rating)
  end
end
