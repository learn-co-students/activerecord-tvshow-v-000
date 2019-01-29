class CreateShows < ActiveRecord::Migration
  create_table :shows do |q|
    q.string :name
    q.string :network
    q.string :day
    q.integer :rating
  end
end
