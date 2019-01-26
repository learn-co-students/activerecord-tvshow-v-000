class AddSeasonToShows < ActiveRecord::Migration

  def change
    add_column :shows, :season, :string
  end #ends method

end #ends class
