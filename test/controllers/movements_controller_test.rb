require 'test_helper'

class MovementsControllerTest < ActionController::TestCase
	setup do
		@line1 = lines(:line1)
		@station1 = stations(:abbesses)
		@movement1 = movements(:movement1)
	end

	test "should not get index" do
		get :index, line_id: @line1.slug, station_id: @station1.slug
		assert_no_access
	end

	test "should not get new" do
		get :new, line_id: @line1.slug, station_id: @station1.slug
		assert_no_access
	end

	test "should not create movement" do
		post :create, line_id: @line1.slug, station_id: @station1.slug, movement: { down_allowed: @movement1.down_allowed, down_station_id: @movement1.down_station_id, length: @movement1.length, up_allowed: @movement1.up_allowed, up_station_id: @movement1.up_station_id, stations: @movement1.stations }
		assert_no_access
	end

	test "should not show movement" do
		get :show, id: @movement1
		assert_no_access
	end

	test "should not get edit" do
		get :edit, id: @movement1
		assert_no_access
	end

	test "should not update movement" do
		patch :update, id: @movement1, movement: { down_allowed: @movement1.down_allowed, down_station_id: @movement1.down_station_id, length: @movement1.length, up_allowed: @movement1.up_allowed, up_station_id: @movement1.up_station_id, stations: @movement1.stations }
		assert_no_access
	end

	test "should not destroy movement" do
		delete :destroy, id: @movement1
		assert_no_access
	end
end
