class CreateShows < ActiveRecord::Migration
  
  def change
    create_table :shows do |c|
      c.text :name
      c.text :network
      c.text :day
      c.integer :rating
    end
  end

end