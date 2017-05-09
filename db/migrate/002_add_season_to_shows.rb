class AddSeasonToShows < ActiveRecord::Migration
  def change
   add_columns :shows, :season, :string
  end
end
