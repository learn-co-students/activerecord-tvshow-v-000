class AddSeasonToShows < ActiveRecord::Migration

  def up
    add_column(:shows, :season, :string)
  end

end