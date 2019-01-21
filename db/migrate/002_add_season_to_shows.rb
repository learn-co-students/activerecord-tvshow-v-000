class AddSeasonToShows < ActiveRecord::Migration[5.1]
  def change
    add_column :shows, :string, :seasons 
  end
end
