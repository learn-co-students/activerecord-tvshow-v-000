class CreateShows < ActiveRecord::Migration
  def change
    add_column :shows, :season, :stringear
  end
end
