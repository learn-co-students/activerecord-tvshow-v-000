class AddSeasonToShows < ActiveRecord::Migration
  def change
    change_table :shows do |t|
      t.column :season, :text
    end
  end
end
