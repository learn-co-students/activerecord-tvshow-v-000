class Show < ActiveRecord::Base
    
#    s = self 
    def self.highest_rating
        self.maximum("rating")
    end
    
    def self.most_popular_show
        
        #<Show id: 18, name: "Rick and Morty", day: "Thursday", network: "Adult Swim", rating: 10, season: nil>
        end
end