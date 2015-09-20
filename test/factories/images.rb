FactoryGirl.define do
	factory :image do
		sequence(:filename) { |n| "#{n}/#{n}.jpg" }
		sequence(:title) { |n| "Image #{n}" }
		sequence(:alt) { |n| "Image number #{n}" }
		
		after(:build) do |image|
			image.imageable ||= create(:station)
		end
	end
end