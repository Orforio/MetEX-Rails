require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
	setup do
		@place = FactoryGirl.create(:place)
	end

	test "should show place" do
		get :show, id: @place
		assert_response :success
	end
end
