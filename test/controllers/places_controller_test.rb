require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
	setup do
		@place = FactoryGirl.create(:place)
	end

	test "should show place" do
		get :show, slug: @place
		assert_response :success
	end
end
