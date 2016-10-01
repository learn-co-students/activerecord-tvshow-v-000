class Show < ActiveRecord::Base
    
    def self.highest_rating
        return maximum(:rating)
    end
    
    def self.most_popular_show
        return where("rating = ?", highest_rating)[0]
    end
    
    def self.lowest_rating
        return minimum(:rating)
    end
    
    def self.least_popular_show
        return where("rating = ?", lowest_rating)[0]
    end
    
    def self.ratings_sum
        return sum(:rating)
    end
    
    def self.popular_shows
        return where("rating > ?", 5)
    end
    
    def self.shows_by_alphabetical_order
        return order(:name)
    end
    
    
end