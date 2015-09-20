require 'test_helper'

class LineTest < ActiveSupport::TestCase
	should have_many(:stations)
	
	should validate_presence_of(:name)
	should validate_length_of(:name).is_at_most(5)
	should validate_uniqueness_of(:name)
	
	context "a list of Lines" do
		setup do
			@line_1 = FactoryGirl.create(:line, name: "1", order: 1)
			@line_3 = FactoryGirl.create(:line, name: "3", order: 3)
			@line_2 = FactoryGirl.create(:line, name: "2", order: 2)
			@inactive_line = FactoryGirl.create(:inactive_line, name: "4", order: 4)
		end
		
		should "include active lines" do
			assert_includes Line.all, @line_3
		end
		
		should "not include inactive lines" do
			assert_not_includes Line.all, @inactive_line
		end
		
		should "be in Line order" do
			assert_equal [@line_1, @line_2, @line_3], Line.all
		end
	end
	
	context "line.name_components" do
		setup do
			@line_with_number_only = FactoryGirl.create(:line, name: "9")
			@line_with_number_and_suffix = FactoryGirl.create(:bis_line, name: "9bis")
			@line_9_hash = { number: '9', suffix: nil }
			@line_9bis_hash = { number: '9', suffix: 'bis' }
		end
		
		should "return a hash of line number and suffix for a line that has one" do
			assert_equal @line_9bis_hash, @line_with_number_and_suffix.name_components
		end
		
		should "return a hash of line number and nil suffix for a line that doesn't have one" do
			assert_equal @line_9_hash, @line_with_number_only.name_components
		end
	end
end
