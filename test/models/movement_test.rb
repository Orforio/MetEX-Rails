require 'test_helper'

class MovementTest < ActiveSupport::TestCase
	should belong_to(:up_station)
	should belong_to(:down_station)
	should have_and_belong_to_many(:stations)
	
	should validate_presence_of(:stations)
	
	context "a Movement" do
		setup do
			@movement1 = movements(:movement1)
		end
		
		should "not validate with both stations nil" do
			@movement1.up_station = nil
			@movement1.down_station = nil
			@movement1.valid?
			assert_match /both stations can't be empty/, @movement1.errors[:base].join
		end
		
		should "validate with either station nil" do
			@movement1.up_station = nil
			assert @movement1.valid?
		end
		
		should "validate with both stations present" do
			assert @movement1.valid?
		end
	end
end
