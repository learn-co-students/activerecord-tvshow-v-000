class ChangeSeasonsToSeason < ActiveRecord::Migration
  def change
    remove_column(:shows, :seasons)
    add_column :shows, :season, :string
  end
end
