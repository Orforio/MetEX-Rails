require 'test_helper'

class LineTest < ActiveSupport::TestCase
	should have_many(:stations)
	
	should validate_presence_of(:name)
	should validate_length_of(:name).is_at_most(5)
	should validate_uniqueness_of(:name)
	
	context "Line" do
		setup do
			@line1 = lines(:line1)
			@line2 = lines(:line2)
		end
		
		should "find active lines" do
			assert_includes Line.all, @line1
		end
		
		should "not find inactive lines" do
			assert_not_includes Line.all, @line2
		end
	end
end
