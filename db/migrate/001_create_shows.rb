#migration code that creates Shows table 
# -name(string), -network(string), -day(string), -rating(int) columns 

# Methods: 
# - highest_rating - return highest value of ratings column 
# - most popular show - highest rating = helper method 
# - lowest rating (lowest value in ratings)
# - least popular show (lowest rating)
# - ratings sum 
# - popular shws (returns array of all shows > 5)
#   use where 
#   -shows by alphabetical order 

class CreateShows < ActiveRecord::Migration[4.2]
 
  def change 
    create_table :shows do |t|
      t.string :name 
      t.string :network 
      t.string :day 
      t.integer :rating 
    end 
  end
  
end