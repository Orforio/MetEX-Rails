class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.integer :line_id
      t.text :description
      t.boolean :active
      t.string :slug

      t.timestamps null: false
    end
    add_index :stations, :line_id
    add_index :stations, [:slug, :line_id], unique: true
  end
end
