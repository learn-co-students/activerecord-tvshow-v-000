class AddProducerToShows < ActiveRecord::Migration

        def change
        add_column :shows, :producer, :string
        #eom
        end
    
#eoc
end
