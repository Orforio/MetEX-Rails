class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :name
      t.text :description
      t.boolean :active
      t.string :slug

      t.timestamps null: false
    end
    add_index :lines, :slug, unique: true
  end
end
