class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |c|
      c.string :name
      c.string :day
      c.string :network
      c.integer :rating
      c.timestamp
    end
  end
end
