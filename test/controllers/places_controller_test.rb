require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
	setup do
		@place1 = places(:place1)
	end

	test "should not get index" do
		get :index
		assert_no_access
	end

	test "should not get new" do
		get :new
		assert_no_access
	end

	test "should not create place" do
		post :create, place: { description: @place1.description, name: @place1.name }
		assert_no_access
	end

	test "should show place" do
		get :show, id: @place1
		assert_response :success
	end

	test "should not get edit" do
		get :edit, id: @place1
		assert_no_access
	end

	test "should not update place" do
		patch :update, id: @place1, place: { description: @place1.description, name: @place1.name }
		assert_no_access
	end

	test "should not destroy place" do
		delete :destroy, id: @place1
		assert_no_access
	end
end
