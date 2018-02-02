class CreateShows < ActiveRecord::Migration

  def change
    create_table :shows do |m|
      m.string :name
      m.string :network
      m.string :day
      m.integer :rating
    end
  end
end
