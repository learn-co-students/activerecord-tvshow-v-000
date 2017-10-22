class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |tv|
      tv.string :name
      tv.string :network
      tv.string :day
      tv.integer :rating
    end
  end
end
