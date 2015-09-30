Feature: Places
	As a passenger,
	I want to see a list of places of interest,
	So that I can start the tour from an above-ground location
	
	Background:
		Given 3 places exist with 1 station and 1 image
		
	Scenario: Viewing available places
		Given I am on the "places index" page
		Then I should see only 3 places
		
	Scenario: Selecting a place
		Given I am on the "places index" page
		When I click on the first place
		Then I am sent to a "show place" page