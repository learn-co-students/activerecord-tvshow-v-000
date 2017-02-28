#002_add_season_to_shows.rb

class AddSeasonToShows < ActiveRecord::Migration

  def change
    add_column(:shows, :season, :string)
  end

end