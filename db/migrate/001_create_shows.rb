class CreateShows < ActiveRecord::Migration 
  def change
    create_table :shows do |t|
      t.text :name
      t.text :day
      t.text :network
      t.integer :rating
    end
  end
end