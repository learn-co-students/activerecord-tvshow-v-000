class CreateShows < ActiveRecord::Migration

  def change
    create_table :shows do |t|
      #name, network, day, rating
      t.string :name
      t.string :network
      t.string :day
      t.integer :rating
    end
  end
end
