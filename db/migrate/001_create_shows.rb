class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.string :network
      t.string :day
      t.integer :rating
    end
  end
end
