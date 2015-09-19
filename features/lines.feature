Feature: Lines
	As a passenger,
	I want to see all the available lines,
	So that I can choose one to start the tour
	
	Scenario: Viewing available lines
		Given I am on the "lines index" page
		Then I should see "Line 1" in the body
			And I should not see "Line 2" in the body
			
	Scenario: Selecting a line
		Given I am on the "lines index" page
		When I click on "Line 1"
		Then I am sent to the "line 1 stations" page