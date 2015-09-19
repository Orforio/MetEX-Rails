When(/^I (?:visit|am on) the "(.*?)" page$/) do |page|
	visit PAGES[page.gsub(' ', '_').to_sym]
end

When(/^I click on "(.*?)"$/) do |text|
	click_on(text)
end

Then(/^I should see "(.*?)" in the (.*?)$/) do |text, context|
	within(context) do
		page.should have_content(/#{text}/i)
	end
end

Then(/^I should not see "(.*?)" in the (.*?)$/) do |text, context|
	within(context) do
		page.should have_no_content(/#{text}/i)
	end
end

Then(/^I am sent to the "(.*?)" page$/) do |page|
	expected_path = PAGES[page.gsub(' ', '_').to_sym]
	expect(current_path).to eq(expected_path)
end