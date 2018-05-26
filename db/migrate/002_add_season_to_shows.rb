class AddSeasonToShows < ActiveRecord::Migration
  def change
    add_column :shows do |t|
      t.string :shows
      t.string :season
    end
  end
end
