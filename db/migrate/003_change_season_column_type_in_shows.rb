class ChangeSeasonColumnTypeInShows < ActiveRecord::Migration
  
  def change
    change_column :shows, :season, :text
  end
end
