class AddSeasonToShows < ActiveRecord::Migration
  def change
    add_column :show, :season, :string
  end
end
