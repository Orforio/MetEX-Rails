require 'test_helper'

class InterchangeTest < ActiveSupport::TestCase
	should have_many(:stations)
	
	should validate_presence_of(:name)
	should validate_uniqueness_of(:name)
end
