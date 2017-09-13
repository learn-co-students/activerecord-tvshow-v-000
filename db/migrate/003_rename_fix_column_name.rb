class RenameFixColumnName < ActiveRecord::Migration[5.1]

  def change
      rename_column :shows, :seasons,:season
  end

  
end
