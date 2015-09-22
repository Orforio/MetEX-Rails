Given(/^(\d+) sound[s]? exist[s]? with a station$/) do |number_stations|
	number_stations.times do
		FactoryGirl.create(:sound)
	end
end