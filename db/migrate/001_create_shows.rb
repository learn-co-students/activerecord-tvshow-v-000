class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.string :network
      t.datetime :day
      t.integer :rating
      t.timestamps
    end
  end
end