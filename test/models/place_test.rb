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
			@line_2 = FactoryGirl.create(:line, order: 11)
			@line_1 = FactoryGirl.create(:line, order: 10)
			@station_2 = FactoryGirl.create(:station, line: @line_2)
			@station_1 = FactoryGirl.create(:station, line: @line_1)
			@place = FactoryGirl.create(:place, stations: [@station_2, @station_1])
		end
		
		should "list nearby Stations in Line order" do
			assert_equal [@station_1, @station_2], Place.find(@place.id).stations
		end
	end
	
	context "a list of Places" do
		setup do
			@place_b = FactoryGirl.create(:place, name: "B Place")
			@place_c = FactoryGirl.create(:place, name: "C Place")
			@place_a = FactoryGirl.create(:place, name: "A Place")
		end
		
		should "be in alphabetical order" do
			places_list = Place.all
			assert_equal [@place_a, @place_b, @place_c], places_list
		end
	end
end
