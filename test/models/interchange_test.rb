require 'test_helper'

class InterchangeTest < ActiveSupport::TestCase
	should have_many(:stations)
	
	should validate_presence_of(:name)
	should validate_uniqueness_of(:name)
	
	context "an Interchange" do
		setup do
			@line_1 = FactoryGirl.create(:line)
			@line_2 = FactoryGirl.create(:line)
			@line_3 = FactoryGirl.create(:line)
			
			@line_3_station = FactoryGirl.create(:station, line: @line_3)
			@interchange = @line_3_station.interchange
			@line_1_station = FactoryGirl.create(:station, line: @line_1, interchange: @interchange)
			@line_2_station = FactoryGirl.create(:station, line: @line_2, interchange: @interchange)
		end
		
		should "list its Stations in Line order" do
			assert_equal [@line_1_station, @line_2_station, @line_3_station], Interchange.find(@interchange.id).stations
		end
	end
end
