class AddSeasonToShows < ActiveRecord::Migration
  def change
    add_column(:shows, :season, "text")
  end
end