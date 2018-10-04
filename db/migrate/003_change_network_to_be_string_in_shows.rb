class ChangeNetworkToBeStringInShows < ActiveRecord::Migration

  def change
    change_column :shows, :network, :string
  end

end
