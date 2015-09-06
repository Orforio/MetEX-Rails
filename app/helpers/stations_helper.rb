module StationsHelper
	def link_to_next_station(station)
		if station
			link_to station.name, line_station_path(station.line.slug, station.slug)
		else
			"Terminus"
		end
	end
end
