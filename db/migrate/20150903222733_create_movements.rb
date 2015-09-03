class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.integer :up_station_id, index: true
      t.integer :down_station_id, index: true
      t.boolean :up_allowed
      t.boolean :down_allowed
      t.integer :length

      t.timestamps null: false
    end
  end
end
