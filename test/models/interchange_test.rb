require 'test_helper'

class InterchangeTest < ActiveSupport::TestCase
	should have_many(:stations)
	
	should validate_presence_of(:name)
	should validate_uniqueness_of(:name)
	
	context "an Interchange" do
		setup do
			@interchange1 = interchanges(:interchange1)
			@line1_station = stations(:abbesses)
			@line3_station = stations(:duroc)
			@line4_station = stations(:concorde)
		end
		
		should "list its Stations in Line order" do
			assert_equal [@line1_station, @line3_station, @line4_station], Interchange.find(@interchange1.id).stations
		end
	end
end
