Given(/^(\d+) active and (\d+) inactive stations exist on a line$/) do |number_active, number_inactive|
	line = FactoryGirl.create(:line)
	
	number_active.times do
		FactoryGirl.create(:station, line: line)
	end
	number_inactive.times do
		FactoryGirl.create(:inactive_station, line: line)
	end
end
