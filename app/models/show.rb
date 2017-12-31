class Show < ActiveRecord::Base

    def highest_rating
        Show.rating.maximum("rating")
    end
    
    # : this method should return the highest value in the ratings column. hint: if there is a #minimum Active Record method, might there be a #maximum method?

    def most_popular_show
        Show.name.highest_rating
    end

    # : this method should return the show with the highest rating. hint: use the #highest_rating method as a helper method.

    def lowest_rating
        Show.minimum("rating")
    end
    
    # : returns the lowest value in the ratings column.
    
    def least_popular_show
        Show.name.lowest_rating
    end

        # : returns the show with the lowest rating.

    def ratings_sum
        Show.sum("rating")
    end

        
        # returns the sum of all of the ratings.
    def popular_shows
        Show.where("rating > 5")
    end
    
    # returns an array of all of the shows that have a rating greater than 5. hint: use the #where Active Record method.

    def shows_by_alphabetical_order
        Show.order(name: :desc)
    end
    
    # : returns an array of all of the shows sorted by alphabetical order according to their names. hint: use the #order Active Record method.
end