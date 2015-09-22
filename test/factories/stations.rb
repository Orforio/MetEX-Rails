FactoryGirl.define do
	factory :station do
		sequence(:name) { |n| "Station #{n}" }
		sequence(:description) { |n| "Station #{n} is a delightful little station." }
		active true
		association :interchange
		association :line
		
		factory :inactive_station do
			active false
		end
		
		factory :station_with_images do
			transient do
				number_images 3
			end
			
			after(:create) do |station, options|
				create_list(:image, options.number_images, imageable: station)
			end
		end
	end
end
