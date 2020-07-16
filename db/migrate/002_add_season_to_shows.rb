class AddSeasonToShows < ActiveRecord::Migration
  def change
    # binding.pry
    add_column(:shows, :season, :string)
  end
end
