class CreateTvShows < ActiveRecord::Migration

  def change
    create_table :shows do |show|
      show.integer :season
      show.string :name
      show.timestamps
    end
  end

end
