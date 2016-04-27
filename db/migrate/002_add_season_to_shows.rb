class AddSeasonToShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :season
    end
  end
end