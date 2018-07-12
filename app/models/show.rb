require 'pry'
class Show < ActiveRecord::Base

    def self.highest_rating
        self.all.maximum('rating')
    end

    def self.most_popular_show
        self.all.find_by(rating: self.highest_rating)
    end

    def self.lowest_rating
        self.all.minimum('rating')
    end

    def self.least_popular_show
        self.all.find_by(rating: self.lowest_rating)
    end

    def self.ratings_sum
        self.all.sum('rating')
    end

    def self.popular_shows
        self.where('rating > 5')
    end

    def self.shows_by_alphabetical_order
        self.all.sort_by {|show| show.name}
    end
end