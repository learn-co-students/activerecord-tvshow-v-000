class Show < ActiveRecord::Migration
	def change
		add_column :shows, :string
	end
end