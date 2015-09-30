Feature: Place
	As a passenger,
	I want to see more information on a place of interest,
	So that I can broaden my knowledge
	
	Background:
		Given 1 place exists with 2 stations and 3 images
		
	Scenario: Viewing place information
		Given I have selected a place
		Then I should see "a wonderful place" in the body
		
	Scenario: Viewing slideshow
		Given I have selected a place
		Then there should be a slideshow with 3 images
		
	Scenario: Viewing nearby stations
		Given I have selected a place
		Then I should see 2 nearby stations