class AddSeasonToShows < ActiveRecord::Migration #[4.1]
  def change
    add_column :shows, :season, :string
  end

end
