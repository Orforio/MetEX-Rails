Given(/^(\d+) place[s]? exist[s]? with (\d+) station[s]? and (\d+) image[s]?$/) do |number_places, number_stations, number_images|
	number_places.times { FactoryGirl.create(:place_with_stations_and_images, number_stations: number_stations, number_images: number_images) }
end

Given(/^I have selected a place$/) do
	step "I have selected a station"
	within('#nav-station-places') do
		first('a').click
	end
end

Then(/^I should see (\d+) nearby stations$/) do |number_stations|
	within('#nav-place-stations') do
		page.should have_selector('li', count: number_stations, visible: true)
	end
end
