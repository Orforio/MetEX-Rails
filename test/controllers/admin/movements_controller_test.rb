require 'test_helper'

class Admin::MovementsControllerTest < ActionController::TestCase
	setup do
		@movement = FactoryGirl.create(:movement)
		@station = @movement.up_station
		@line = @station.line
	end

	test "should not get index" do
		get :index, line_id: @line.slug, station_id: @station.slug
		assert_no_access
	end

	test "should not get new" do
		get :new, line_id: @line.slug, station_id: @station.slug
		assert_no_access
	end

	test "should not create movement" do
		post :create, line_id: @line.slug, station_id: @station.slug, movement: { down_allowed: @movement.down_allowed, down_station_id: @movement.down_station_id, length: @movement.length, up_allowed: @movement.up_allowed, up_station_id: @movement.up_station_id, stations: @movement.stations }
		assert_no_access
	end

	test "should not show movement" do
		get :show, id: @movement
		assert_no_access
	end

	test "should not get edit" do
		get :edit, id: @movement
		assert_no_access
	end

	test "should not update movement" do
		patch :update, id: @movement, movement: { down_allowed: @movement.down_allowed, down_station_id: @movement.down_station_id, length: @movement.length, up_allowed: @movement.up_allowed, up_station_id: @movement.up_station_id, stations: @movement.stations }
		assert_no_access
	end

	test "should not destroy movement" do
		delete :destroy, id: @movement
		assert_no_access
	end
end
