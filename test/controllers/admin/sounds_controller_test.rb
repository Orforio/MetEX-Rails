require 'test_helper'

class Admin::SoundsControllerTest < ActionController::TestCase
  setup do
		@sound = FactoryGirl.create(:sound)
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
		 post :create, sound: { filename: @sound.filename, length: @sound.length, soundable: @sound.soundable, title: @sound.title }
		assert_no_access
	end

	test "should not show sound" do
		get :show, id: @sound
		assert_no_access
	end

	test "should not get edit" do
		get :edit, id: @sound
		assert_no_access
	end

	test "should not update sound" do
		patch :update, id: @sound, sound: { filename: @sound.filename, length: @sound.length, soundable: @sound.soundable, title: @sound.title }
		assert_no_access
	end

	test "should not destroy sound" do
		delete :destroy, id: @sound
		assert_no_access
	end
end
