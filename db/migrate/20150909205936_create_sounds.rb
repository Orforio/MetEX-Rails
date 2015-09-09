class CreateSounds < ActiveRecord::Migration
  def change
    create_table :sounds do |t|
      t.string :filename
      t.string :title
      t.integer :length
      t.references :soundable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
