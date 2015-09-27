require 'test_helper'

class StationsControllerTest < ActionController::TestCase
	setup do
		@station = FactoryGirl.create(:station)
		@line = @station.line
	end

	test "should get index" do
		get :index, line_id: @line.slug
		assert_response :success
		assert_not_nil assigns(:stations)
	end

	test "should show station" do
		get :show, line_id: @line.slug, id: @station.slug
		assert_response :success
	end
end
