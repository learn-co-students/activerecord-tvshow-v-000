class RemoveSeasons < ActiveRecord::Migration
  def change
    remove_column :shows, :seasons, :string
  end
end 
