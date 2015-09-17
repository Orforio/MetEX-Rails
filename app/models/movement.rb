class Movement < ActiveRecord::Base
	belongs_to :up_station, class_name: 'Station', inverse_of: :down_movements
	belongs_to :down_station, class_name: 'Station', inverse_of: :up_movements
	has_and_belongs_to_many :stations
	
	validates :stations, presence: true
	validate :both_stations_cannot_be_nil
	
	private
		def both_stations_cannot_be_nil
			if up_station_id.blank? && down_station_id.blank?
				errors.add(:base, "both stations can't be empty")
			end
		end
end
