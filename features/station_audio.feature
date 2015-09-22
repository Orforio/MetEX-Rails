Feature: Station - Audio
	As a passenger,
	I want to hear environmental audio in a station,
	To increase the reality of the experience
	
	Scenario: Station has no audio
		Given 1 active station exists
			And I have selected a station
		Then there should not be audio
	
	Scenario: Station has ambience audio
		Given 1 sound exists with a station
			And I have selected a station
		Then there should be audio