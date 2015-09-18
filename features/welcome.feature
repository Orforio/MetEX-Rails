Feature: Welcome
	As a passenger,
	I want to be welcomed to the site,
	So that I can start exploring
	
	Scenario: Be welcomed
		When I visit the "main index" page
		Then I should see "welcome" in the body
	
	Scenario: Start tour
		Given I am on the "main index" page
		When I click on "begin your tour"
		Then I am sent to the "lines index" page