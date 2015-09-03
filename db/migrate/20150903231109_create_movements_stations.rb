class CreateMovementsStations < ActiveRecord::Migration
  def change
    create_table :movements_stations, id:false do |t|
	    t.belongs_to :movement, index: true
	    t.belongs_to :station, index: true
    end
  end
end
