class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |el|
      el.string :name
      el.string :network
      el.string :day
      el.integer :rating
    end
  end
end
