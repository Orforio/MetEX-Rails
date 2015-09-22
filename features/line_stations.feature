Feature: Line - Stations
	As a passenger,
	I want to see all the stations on a line,
	So that I can choose one to start the tour
	
	Background:
		Given 2 active and 1 inactive stations exist on a line
	
	Scenario: Viewing line information
		Given I have selected a line
		Then I should see "very interesting line" in the body
		
	Scenario: Viewing available stations
		Given I have selected a line
		Then I should see only 2 stations
			
	Scenario: Selecting a station
		Given I have selected a line
		When I click on the first station
		Then I am sent to the "show station" page 