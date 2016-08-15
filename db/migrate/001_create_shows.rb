class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.integer :rating
      t.string :season
      t.string :network
      t.string :day
      t.integer :rating_columns
    end
  end
end
