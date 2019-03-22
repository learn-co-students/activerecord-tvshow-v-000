#write a migration to add a column, `season`, to the `shows` table. The datatype of this column is string.

class AddSeasonToShows < ActiveRecord::Migration[4.2]
  def change
    add_column :shows, :season, :string
  end
end
