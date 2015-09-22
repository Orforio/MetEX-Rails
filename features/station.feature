Feature: Station
	As a passenger,
	I want to see all the information on a station,
	To fully immerse myself in the tour
	
	Background:
		Given 1 active and 0 inactive stations exist on a line
		
	Scenario: Viewing station information
		Given I have selected a station
		Then I should see "delightful little station" in the body
