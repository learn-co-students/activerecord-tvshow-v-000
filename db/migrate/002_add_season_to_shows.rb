class AddSeasonToShows < ActiveRecord::Migration
  def change
    add_column  :show do |t|
      t.string  :season
  end
end
