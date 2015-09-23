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
			@active_station = FactoryGirl.create(:station)
			@inactive_station = FactoryGirl.create(:inactive_station)
		end
		
		should "find active stations" do
			assert_includes Station.all, @active_station
		end
		
		should "not find inactive stations" do
			assert_not_includes Station.all, @inactive_station
		end
	end
	
	context "a Station" do
		setup do
			@station = FactoryGirl.create(:station)
			@up_movement_disallowed = FactoryGirl.create(:single_direction_down_movement, down_station: @station)
			@up_movement_allowed = FactoryGirl.create(:movement, down_station: @station)
			@movements = @station.up_movements
		end
		
		should "list allowed Movements first" do
			assert_equal [@up_movement_allowed, @up_movement_disallowed], @movements
		end
	end
end
