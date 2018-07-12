class CreateShows < ActiveRecord::Migration

    def change
        create_table :shows do |t|
            t.column :name, :string
            t.column :network, :string
            t.column :day, :string
            t.column :rating, :integer
        end
    end
end