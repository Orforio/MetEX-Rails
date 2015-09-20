FactoryGirl.define do
	factory :line do
		sequence(:name) { |n| "#{n}" }
		sequence(:description) { |n| "Line #{n} is a very interesting line." }
		active true
		sequence(:order) { |n| n }
		
		factory :inactive_line do
			active false
		end
		
		factory :bis_line do
			sequence(:name) { |n| "#{n}bis" }
			sequence(:description) { |n| "Line #{n}bis has a weird name." }
		end
	end
end
