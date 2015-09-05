class CreateInterchanges < ActiveRecord::Migration
  def change
    create_table :interchanges do |t|
      t.string :name
      t.string :slug

      t.timestamps null: false
    end
    add_index :interchanges, :slug, unique: true
    
    add_column :stations, :interchange_id, :integer
    add_index :stations, :interchange_id
  end
end
