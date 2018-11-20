class AddSeasonToShows < ActiveRecord::Migrations
  def change
    add_column :shows, :seasons, :string
  end
end
