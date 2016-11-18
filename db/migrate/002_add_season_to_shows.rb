class AddSeasonToShows < ActiveRecord::Migration
  def up
    execute "ALTER TABLE 'shows' ADD 'season' string"
  end
end
