class AddSeasonToShows < ActiveRecord::Migration[5.1]

  def change
    add_column :shows, :season, :string
  end #ends method

end #ends class
