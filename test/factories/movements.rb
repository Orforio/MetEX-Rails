FactoryGirl.define do
	factory :movement do
		association :up_station, factory: :station
		association :down_station, factory: :station
		up_allowed true
		down_allowed true
		length 42
		
		after(:build) do |movement|
			movement.stations << movement.up_station if movement.up_station
			movement.stations << movement.down_station if movement.down_station
		end
		
		factory :terminus_movement do
			up_station nil
			up_allowed false
			down_allowed false
		end
		
		factory :single_direction_up_movement do
			down_allowed false
		end
		
		factory :single_direction_down_movement do
			up_allowed false
		end
	end
end
