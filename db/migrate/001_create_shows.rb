class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |s|
      s.text :name
      s.text :network
      s.text :day
      s.integer :rating
    end
  end
end
