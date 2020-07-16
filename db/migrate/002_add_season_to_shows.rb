class AddSeasonToShows < ActiveRecord::Migration

        def change
        add_column :shows, :season, :string
        #eom
        end
    
#eoc
end
