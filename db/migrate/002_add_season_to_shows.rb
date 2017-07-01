class AddSeasonToShows < ActiveRecord::Migration
  def change
    add_column :shows, :integer, :string
  end
end

#https://apidock.com/rails/ActiveRecord/ConnectionAdapters/SchemaStatements/add_column
