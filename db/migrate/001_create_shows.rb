class CreateShows < ActiveRecord::Migration

  #The table should have name, network, day, and rating columns. 
  #Name, network and day have a datatype of string and rating has a datatype of integer.

  def change
    create_table :shows do |t|
      t.string :name
      t.string :network
      t.string :day
      t.integer :rating
    end
  end



end