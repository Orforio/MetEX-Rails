require 'test_helper'

class SoundsControllerTest < ActionController::TestCase
	setup do
		@sound1 = sounds(:sound1)
	end

	test "should not get index" do
		get :index
		assert_no_access
	end

	test "should not get new" do
		get :new
		assert_no_access
	end

	test "should not create sound" do
		 post :create, sound: { filename: @sound1.filename, length: @sound1.length, soundable: @sound1.soundable, title: @sound1.title }
		assert_no_access
	end

	test "should not show sound" do
		get :show, id: @sound1
		assert_no_access
	end

	test "should not get edit" do
		get :edit, id: @sound1
		assert_no_access
	end

	test "should not update sound" do
		patch :update, id: @sound1, sound: { filename: @sound1.filename, length: @sound1.length, soundable: @sound1.soundable, title: @sound1.title }
		assert_no_access
	end

	test "should not destroy sound" do
		delete :destroy, id: @sound1
		assert_no_access
	end
end