Given(/^(\d+) active line[s]? exist[s]?$/) do |number_active|
	number_active.times do
		FactoryGirl.create(:line)
	end
end

Given(/^(\d+) inactive line[s]? exist[s]?$/) do |number_inactive|
	number_inactive.times do
		FactoryGirl.create(:inactive_line)
	end
end

Given(/^(\d+) active and (\d+) inactive lines exist$/) do |number_active, number_inactive|
	step "#{number_active} active line exist"
	step "#{number_inactive} inactive line exist"
end

When(/^I click on the first line$/) do
  first('.list-group-item').click
end

Then(/^I should see only (\d+) line$/) do |number|
	within('.list-group') do
		find('.list-group-item', count: number, visible: true)
	end
end
