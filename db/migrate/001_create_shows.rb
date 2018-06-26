class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :day
      t.string :network
      t.string :name
      t.integer :rating
    end
  end
end
