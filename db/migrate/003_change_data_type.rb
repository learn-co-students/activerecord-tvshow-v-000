class ChangeDataType < ActiveRecord::Migration
  def change
    change_column :shows, :day, :string

  end
end
