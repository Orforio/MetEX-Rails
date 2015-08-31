class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :name
      t.string :colour
      t.text :description
      t.boolean :active, default: false
      t.string :stub, index: true

      t.timestamps null: false
    end
  end
end
