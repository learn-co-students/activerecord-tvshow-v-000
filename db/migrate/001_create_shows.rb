class CreateShows < ActiveRecord::Migration
  def method_name
    create_table :shows do |t|
      t.string :name
      t.string :network
      t.string :day
      t.integer :rating
    end
  end

end
