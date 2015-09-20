FactoryGirl.define do
	factory :sound do
		sequence(:filename) { |n| "#{n}/ambience_#{n}.mp3" }
		sequence(:title) { |n| "Station #{n} - ambience" }
		length 42
		
		after(:build) do |sound|
			sound.soundable ||= create(:station)
		end
	end
end