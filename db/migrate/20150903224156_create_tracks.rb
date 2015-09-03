class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.references :station, index: true, foreign_key: true
      t.references :movement, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
