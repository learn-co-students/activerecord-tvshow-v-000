class AddSeasonToShows < ActiveRecord::Migration

  def up
    add_column :shows, :season, :text

  end
end
