class ChangeRatingColumn < ActiveRecord::Migration

  def change
    change_column :shows, :rating, :integer
  end
end
