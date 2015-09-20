FactoryGirl.define do
	factory :interchange do
		sequence(:name) { |n| "Interchange #{n}" }
	end
end
