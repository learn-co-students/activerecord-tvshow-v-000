class AddSeasonToShows < ActiveRecord::Migration

  def change
    #add_column :shows, :season, :string
    change_table :shows do |t|
      t.string :season
    end
  end

end