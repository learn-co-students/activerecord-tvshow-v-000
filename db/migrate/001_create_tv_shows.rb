class CreateTVShows < ActiveRecord::Migration[5.2]

  def change
    create_table :shows do |show|
      show.integer :season
      show.timestamps
    end
  end

end
