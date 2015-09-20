require 'test_helper'

class MovementTest < ActiveSupport::TestCase
	should belong_to(:up_station)
	should belong_to(:down_station)
	should have_and_belong_to_many(:stations)
	
	should validate_presence_of(:stations)
	
	context "a Movement" do
		should "not validate with both stations nil" do
			@invalid_movement = FactoryGirl.build(:terminus_movement, down_station: nil)
			@invalid_movement.valid?
			assert_match /both stations can't be empty/, @invalid_movement.errors[:base].join
		end
		
		should "validate with either station nil" do
			@terminus_movement = FactoryGirl.build(:terminus_movement)
			assert @terminus_movement.valid?
		end
		
		should "validate with both stations present" do
			@movement = FactoryGirl.build(:movement)
			assert @movement.valid?
		end
	end
end
