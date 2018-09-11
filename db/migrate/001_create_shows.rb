class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.string :day
      t.integer :rating
      t.string :network

      t.timestamps null: false
    end
  end
end
