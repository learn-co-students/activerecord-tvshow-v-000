class AddSeasonToShows < ActiveRecord::Migration

def up
  add_column :shows, :season, :string
end

def down
  remove_column :shows, :season
end

end
