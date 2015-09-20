FactoryGirl.define do
	factory :place do
		sequence(:name) { |n| "Place #{n}" }
		sequence(:description) { |n| "Place #{n} is a wonderful place." }
		
		after(:build) do |place|
			place.stations << create(:station) if place.stations.empty?
		end
	end
end
