class AddSeasonToShows < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :column
      t.string :season
    end
  end
end
