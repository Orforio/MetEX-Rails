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
	end
end
