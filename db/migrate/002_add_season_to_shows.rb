class AddSeasonToShows < ActiveRecord::Migration
  def change
    add_column :shows, :season, :string
  end
end

# bundle update json
# bundle exec rake db:Migrate
# no [] after avticerecord::migration
