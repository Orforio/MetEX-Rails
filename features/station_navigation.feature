Feature: Station - Navigation
	As a passenger,
	I want to select the next or previous station to the one I'm on,
	So that I can explore the line sequentially
	
	Scenario: Station is in the middle of the line
		Given a running station exists
			And I have selected a station
		Then I should see 1 up movement
			And I should see 1 down movement
	
	Scenario: Station is a terminus
		Given a terminus station exists
			And I have selected a station
		Then I should see 0 up movements
			And I should see 1 down movement
	
	Scenario: Station is a branching station in a loop
		Given a branching loop station exists
			And I have selected a station
		Then I should see 2 up movements
			And I should see 1 down movement
			And I should see 1 illegal up movement
	
	Scenario: Station is a terminus station in a loop
		Given a terminus loop station exists
			And I have selected a station
		Then I should see 0 up movements
			And I should see 2 down movements
			And I should see 1 illegal down movement
			
	Scenario: Selecting another station
		Given a running station exists
			And I have selected a station
		When I click on the first up movement
		Then I should be sent to a "show station" page