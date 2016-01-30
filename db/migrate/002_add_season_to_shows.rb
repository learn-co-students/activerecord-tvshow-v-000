## Add a column 'season' to shows table. Datatype is a string

class AddSeasonToShows < ActiveRecord::Migration 

  def change
    add_column :shows, :season, :string
  end


end ## class end