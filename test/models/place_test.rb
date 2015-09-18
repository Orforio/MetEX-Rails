require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
	should have_many(:images)
	should have_and_belong_to_many(:stations)
	
	should validate_presence_of(:name)
	should validate_presence_of(:description)
	should validate_presence_of(:stations)
	should validate_uniqueness_of(:name)
	
	context "a Place" do
		setup do
			@place3 = places(:place3)
			@etoile4 = stations(:etoile4)
			@etoile3 = stations(:etoile3)
		end
		
		should "list nearby Stations in Line order" do
			assert_equal [@etoile3, @etoile4], Place.find(@place3.id).stations
		end
	end
	
	context "a list of Places" do
		setup do
			@place1 = places(:place1)
			@place2 = places(:place2)
			@place3 = places(:place3)
		end
		
		should "be in alphabetical order" do
			places_list = Place.all
			assert_equal [@place2, @place3, @place1], places_list
		end
	end
end
