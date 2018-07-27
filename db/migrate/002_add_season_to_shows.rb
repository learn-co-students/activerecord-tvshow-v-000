class AddSeasonToShows < ActiveRecord::Migration
  def change
    add_column :shows do |s|
      s.string :season
    end
  end
end
