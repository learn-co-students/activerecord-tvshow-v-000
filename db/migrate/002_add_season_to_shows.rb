class AddSeasonToShows < ActiveRecord::Migration
  def change
    add_column :shows, :season, :string
  end# of change
end# of class