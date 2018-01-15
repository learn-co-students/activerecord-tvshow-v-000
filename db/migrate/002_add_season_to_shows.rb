class AddSeasonToShows < ActiveRecord::Migration
  change_table :shows do |t|
    t.string :season
  end
end
