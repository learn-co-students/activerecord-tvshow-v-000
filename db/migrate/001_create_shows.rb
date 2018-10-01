class CreateShows < ActiveRecord::Migration
  def change
    
    create_table :shows do |table|
      table.string :name
      table.integer :rating
      table.string :network
      table.string :day

    end
  end
end