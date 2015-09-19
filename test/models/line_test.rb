require 'test_helper'

class LineTest < ActiveSupport::TestCase
	should have_many(:stations)
	
	should validate_presence_of(:name)
	should validate_length_of(:name).is_at_most(5)
	should validate_uniqueness_of(:name)
	
	context "a list of Lines" do
		setup do
			@line1 = lines(:line1)
			@line2 = lines(:line2)
			@line3 = lines(:line3)
			@line4 = lines(:line4)
			@line5 = lines(:line5)
			@line4bis = lines(:line4bis)
		end
		
		should "include active lines" do
			assert_includes Line.all, @line1
		end
		
		should "not include inactive lines" do
			assert_not_includes Line.all, @line2
		end
		
		should "be in Line order" do
			assert_equal [@line1, @line3, @line4, @line4bis, @line5], Line.all
		end
	end
	
	context "line.name_components" do
		setup do
			@line3 = lines(:line3)
			@line4bis = lines(:line4bis)
			@line3hash = { number: '3', suffix: nil }
			@line4bishash = { number: '4', suffix: 'bis' }
		end
		
		should "return a hash of line number and suffix for a line that has one" do
			assert_equal @line4bishash, @line4bis.name_components
		end
		
		should "return a hash of line number and nil suffix for a line that doesn't have one" do
			assert_equal @line3hash, @line3.name_components
		end
	end
end
