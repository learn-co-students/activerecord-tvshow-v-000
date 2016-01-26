class CreateShows < ActiveRecord::Migration
  create_table :shows do |t|
    t.string :name
    t.string :day
    t.string :network
    t.integer :rating
  end
end