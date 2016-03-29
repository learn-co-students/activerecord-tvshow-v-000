class CreateShows<ActiveRecord::Migration

  def change
    create_table :shows do |a|
      a.string :name
      a.string :day
      a.string :network
      a.integer :rating
    end
  end
end