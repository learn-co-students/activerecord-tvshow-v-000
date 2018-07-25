class AddSeasonToShows < ActiveRecord::Migration[5.1]

  def change
    add_columnn :shows, :season, :string
  end

end
