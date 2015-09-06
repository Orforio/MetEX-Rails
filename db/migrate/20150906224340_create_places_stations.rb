class CreatePlacesStations < ActiveRecord::Migration
  def change
    create_table :places_stations, id: false do |t|
	    t.belongs_to :place, index: true
	    t.belongs_to :station, index: true
    end
  end
end
