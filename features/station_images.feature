Feature: Station - Images
	As a passenger,
	I want to see a slideshow of images from the current station,
	To increase the reality of the experience
	
	Scenario: Station has images
		Given 1 station with 3 images exists
			And I have selected a station
		Then there should be a slideshow with 3 images
		
	Scenario: Station has no images
		Given 1 active station exists
			And I have selected a station
		Then there should not be a slideshow
			But I do see a placeholder image