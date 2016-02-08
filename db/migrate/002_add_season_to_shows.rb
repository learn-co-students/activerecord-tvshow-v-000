class AddSeasonToShows < ActiveRecord::Migration
  def up
    add_column :shows, :season, :strong
  end
  def down
    delete_column :shows, :season
  end
end
