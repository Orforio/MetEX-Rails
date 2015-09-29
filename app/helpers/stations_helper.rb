module StationsHelper
	def link_to_next_station(station, allowed = false)
		if station
			not_allowed_class = 'bg-danger' unless allowed
			link_to station.name, station_path(station.line.slug, station.slug), class: not_allowed_class
		else
			"Terminus"
		end
	end
end
