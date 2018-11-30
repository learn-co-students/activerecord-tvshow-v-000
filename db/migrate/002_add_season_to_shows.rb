class AddSeasonToShows < ActiveRecord::Migration
  def self.up
    add_column :shows, :season, :string
  end

  def self.down
    remove_column :shows, :season
  end 
end
   