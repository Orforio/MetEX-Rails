Given(/^(\d+) active and (\d+) inactive stations exist on a line$/) do |number_active, number_inactive|
	line = FactoryGirl.create(:line)
	
	number_active.times do
		FactoryGirl.create(:station, line: line)
	end
	number_inactive.times do
		FactoryGirl.create(:inactive_station, line: line)
	end
end

Given(/^(\d+) active station exists$/) do |number_active|
	step "#{number_active} active and 0 inactive stations exist on a line"
end

Given(/^I have selected a station$/) do
	step "I have selected a line"
	step "I click on the first station"
end

When(/^I click on the first interchange station$/) do
	within('#nav-station-connections') do
		first('a').click
	end
end

Then(/^I should see (\d+) connections$/) do |number_connections|
	within('#nav-station-connections') do
		page.should have_selector('li', count: number_connections, visible: true)
	end
end

Then(/^there should( not)? be audio$/) do |not_present|
	number_sounds = not_present ? 0 : 1
	within('#content-station-description') do
		page.should have_selector('audio', count: number_sounds, visible: true)
	end
end
