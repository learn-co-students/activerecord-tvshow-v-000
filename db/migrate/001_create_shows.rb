class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |table|
      table.string :name
      table.string :network
      table.string :day
      table.integer :rating
      table.timestamps null: false
    end
  end
end
