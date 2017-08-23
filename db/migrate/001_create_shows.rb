class CreateShows < ActiveRecord::Migration

  def change
    create_table :shows do |a|
      a.string :name
      a.string :network
      a.string :day
      a.integer :rating
    end
  end
  
end
