class CreateShows <ActiveRecord::Migration
  def change
    create_table :shows do |show|
      show.string :name
      show.string :day
      show.string :network
      show.integer :rating
    end
  end
end
