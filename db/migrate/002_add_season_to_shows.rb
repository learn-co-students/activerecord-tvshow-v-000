class AddSeasonToTVShows < ActiveRecord::Migration
  def change
    add_column :tvshows, :season, :string
  end
end
