class Movement < ActiveRecord::Base
	belongs_to :up_station, class_name: 'Station', inverse_of: :down_movements
	belongs_to :down_station, class_name: 'Station', inverse_of: :up_movements
	has_and_belongs_to_many :stations
end
