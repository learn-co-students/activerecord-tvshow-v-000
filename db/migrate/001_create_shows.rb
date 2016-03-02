class CreateShows < ActiveRecord::Migration
  def change
    create_table :Shows do |t|
      t.string :name
      t.string :network
      t.string :day
      t.integer :rating
    end
  end
end
