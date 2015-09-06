class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :filename
      t.string :title
      t.string :alt
      t.references :imageable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
