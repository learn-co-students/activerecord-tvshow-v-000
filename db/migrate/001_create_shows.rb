class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name, :network, :day
      t.integer :rating
    end
  end
end
