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
			@station1 = stations(:abbesses)
			@station2 = stations(:bercy)
		end
		
		should "find active stations" do
			assert_includes Station.all, @station1
		end
		
		should "not find inactive stations" do
			assert_not_includes Station.all, @station2
		end
	end
	
	context "a Station" do
		setup do
			@abbesses = stations(:abbesses)
			@movements = @abbesses.down_movements
			@movement1 = movements(:movement1)
			@movement2 = movements(:movement2)
		end
		
		should "list allowed Movements first" do
			assert_equal [@movement2, @movement1], @movements
		end
	end
end
