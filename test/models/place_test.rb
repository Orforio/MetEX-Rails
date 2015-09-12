require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
	should have_many(:images)
	should have_and_belong_to_many(:stations)
	
	should validate_presence_of(:name)
	should validate_presence_of(:description)
	should validate_presence_of(:stations)
	should validate_uniqueness_of(:name)
end
