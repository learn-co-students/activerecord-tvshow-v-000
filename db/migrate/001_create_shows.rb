## Write the migration code to create a shows table
## Table should have name, network, day, and rating columns
## Name, network, and day = string
## Rating = integer

class CreateShows < ActiveRecord::Migration 

  def change
    create_table :shows do |t|
      t.string :name
      t.string :network
      t.string :day
      t.integer :rating 
    end
  end


end ## Class End