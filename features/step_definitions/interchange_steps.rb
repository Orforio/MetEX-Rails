Given(/^(\d+) interchange[s]? exist[s]? with (\d+) station[s]?$/) do |number_interchanges, number_stations|
	number_interchanges.times do
		FactoryGirl.create(:interchange_with_stations, number_stations: number_stations)
	end
end