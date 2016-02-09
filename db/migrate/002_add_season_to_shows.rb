class AddSeasonToShows < ActiveRecord::Migreation

  def change
    add_column :shows, :season, :string
  end

end