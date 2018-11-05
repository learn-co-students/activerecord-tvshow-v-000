class CreateShows < ActiveRecord::Migration

  def change
    create_table :shows do |t|
      t.string :name
      t.string :day
      t.string :season
      t.string :network
      t.integer :rating
    end
  end
end
