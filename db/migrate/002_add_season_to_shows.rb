class AddSeasonToShows < ActiveRecord::Migration
  def change
    add_column :shows, :season, :string
  end
end

#https://apidock.com/rails/ActiveRecord/ConnectionAdapters/SchemaStatements/add_column
