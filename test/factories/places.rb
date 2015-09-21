FactoryGirl.define do
	factory :place do
		sequence(:name) { |n| "Place #{n}" }
		sequence(:description) { |n| "Place #{n} is a wonderful place." }
		
		after(:build) do |place|
			place.stations << create(:station) if place.stations.empty?
		end
		
		factory :place_with_stations_and_images do
			transient do
				number_stations 2
				number_images 3
			end
			
			after(:create) do |place, options|
				create_list(:station, options.number_stations - 1, places: [place])
				create_list(:image, options.number_images, imageable: place)
			end
		end
	end
end
