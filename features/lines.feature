Feature: Lines
	As a passenger,
	I want to see all the available lines,
	So that I can choose one to start the tour
	
	Scenario: Viewing available lines
		Given 1 active and 1 inactive lines exist
			And I am on the "lines index" page
		Then I should see only 1 line
			
	Scenario: Selecting a line
		Given 2 active lines exist
			And I am on the "lines index" page
		When I click on the first line
		Then I am sent to the "line stations" page