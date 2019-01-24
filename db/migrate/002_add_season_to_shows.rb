#Write a migration to add a column
#Add column called season to  shows table
#Datatype of season column is string

class AddSeasonToShows< ActiveRecord::Migration
  def change
    add_column :shows, :season, :string
  end
end
