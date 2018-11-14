class AddSeasonToShows < ActiveRecord::Migration

  def change
    add_column :shows, :season, :string, :default => 0
  end

end
