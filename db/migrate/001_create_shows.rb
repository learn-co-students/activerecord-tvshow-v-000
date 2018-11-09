class CreateShows < ActiveRecord::Migration 
  create_table :shows do |s|
    s.string :name 
    s.string :network 
    s.string :day 
    s.integer :rating 
  end 
end 