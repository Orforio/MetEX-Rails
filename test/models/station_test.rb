require 'test_helper'

class StationTest < ActiveSupport::TestCase
	should belong_to(:line)
	should belong_to(:interchange)
	should have_one(:sound)
	should have_many(:images)
	should have_many(:up_movements)
	should have_many(:down_movements)
	should have_and_belong_to_many(:movements)
	should have_and_belong_to_many(:places)
	
	should validate_presence_of(:name)
	should validate_presence_of(:line)
	should validate_uniqueness_of(:name).scoped_to(:line_id)
	
	context "Station" do
		setup do
			@line1 = lines(:line1)
			@station1 = stations(:abbesses)
			@station2 = stations(:bercy)
		end
		
		should "find active stations" do
			assert_includes @line1.stations.all, @station1
		end
		
		should "not find inactive stations" do
			assert_not_includes @line1.stations.all, @station2
		end
	end
end
