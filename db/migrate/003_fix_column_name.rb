class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :shows, :title, :name
  end
end
