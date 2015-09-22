FactoryGirl.define do
	factory :interchange do
		sequence(:name) { |n| "Interchange #{n}" }
		
		factory :interchange_with_stations do
			transient do
				number_stations 2
			end
			
			after(:create) do |interchange, options|
				create_list(:station, options.number_stations, interchange: interchange)
			end
		end
	end
end
