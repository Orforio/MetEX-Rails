require 'test_helper'

class Admin::PlacesControllerTest < ActionController::TestCase
	setup do
		@place = FactoryGirl.create(:place)
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
		post :create, place: { description: @place.description, name: @place.name }
		assert_no_access
	end

	test "should not get edit" do
		get :edit, id: @place
		assert_no_access
	end

	test "should not update place" do
		patch :update, id: @place, place: { description: @place.description, name: @place.name }
		assert_no_access
	end

	test "should not destroy place" do
		delete :destroy, id: @place
		assert_no_access
	end
end
