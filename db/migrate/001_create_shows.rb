class CreateShows < ActiveRecord::Migration
    def change
      create_table :shows do |col|
        col.string :name
        col.string :day
        col.string :network
        col.integer :rating
      end
    end
end
