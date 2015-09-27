require 'test_helper'

class Admin::InterchangesControllerTest < ActionController::TestCase
	setup do
		@interchange = FactoryGirl.create(:interchange)
	end

	test "should not get index" do
		get :index
		assert_no_access
	end

	test "should not get new" do
		get :new
		assert_no_access
	end

	test "should not create interchange" do
		post :create, interchange: { name: @interchange.name }
		assert_no_access
	end

	test "should not show interchange" do
		get :show, id: @interchange
		assert_no_access
	end

	test "should not get edit" do
		get :edit, id: @interchange
		assert_no_access
	end

	test "should not update interchange" do
		patch :update, id: @interchange, interchange: { name: @interchange.name }
		assert_no_access
	end

	test "should not destroy interchange" do
		delete :destroy, id: @interchange
		assert_no_access
	end
end
