

class AddSeasonToShows < ActiveRecord::Migration
  def change
    add_column :shows, :season, :strling
  end
end