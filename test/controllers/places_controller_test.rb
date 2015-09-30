require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
	setup do
		@place = FactoryGirl.create(:place)
	end
	
	test "should get index" do
		get :index
		assert_response :success
		assert_not_nil assigns(:places)
	end

	test "should show place" do
		get :show, slug: @place
		assert_response :success
	end
end
