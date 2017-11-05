class CreateShows < ActiveRecord::Migration
  def change
      create_table :shows do |t|
        t.string :name
        t.string :network
        t.integer :rating
        t.string :day
      end
  end
end
