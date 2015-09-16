require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
	should have_many(:images)
	should have_and_belong_to_many(:stations)
	
	should validate_presence_of(:name)
	should validate_presence_of(:description)
	should validate_presence_of(:stations)
	should validate_uniqueness_of(:name)
	
	context "a list of Places" do
		setup do
			@place1 = places(:place1)
			@place2 = places(:place2)
		end
		
		should "be in alphabetical order" do
			places_list = Place.all
			assert_equal [@place2, @place1], places_list
		end
	end
end
