class AddOrderToLines < ActiveRecord::Migration
	def change
		add_column :lines, :order, :integer
		add_index :lines, :order, unique: true
	end
end
