class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |table|
      table.string :name
      table.string :day
      table.string :network
      table.integer :rating

    end
  end
end
