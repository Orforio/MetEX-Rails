Feature: Stations - Places
	As a passenger,
	I want to see places near the current station,
	So I can explore more of the surrounding area
	
	Scenario: Station is not near any place
		Given 1 active station exists
			And I have selected a station
		Then I should see 0 places
		
	Scenario: Station is near places
		Given 1 place exists with 1 station and 0 images
			And I have selected a station
		Then I should see 1 place
	
	Scenario: Viewing nearby places
		Given 1 place exists with 2 stations and 0 images
			And I have selected a station
		When I click on the first place item
		Then I should be sent to a "show place" page