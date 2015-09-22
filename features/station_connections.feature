Feature: Station - Connections
	As a passenger,
	I want to see available interchanges at the current station,
	So I can switch between lines
	
	Scenario: Station does not belong to an interchange and connects to no lines
		Given 1 active station exists
			And I have selected a station
		Then I should see 0 connections
		
	Scenario: Station belongs to an interchange and connects to other lines
		Given 1 interchange exists with 3 stations
			And I have selected a station
		Then I should see 2 connections
		
	Scenario: Navigating to an interchange station
		Given 1 interchange exists with 2 station
			And I have selected a station
		When I click on the first interchange station
		Then I should be sent to a "show station" page