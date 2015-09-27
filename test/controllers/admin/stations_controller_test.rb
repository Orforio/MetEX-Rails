require 'test_helper'

class Admin::StationsControllerTest < ActionController::TestCase
	setup do
		@station = FactoryGirl.create(:station)
		@line = @station.line
	end
	
	test "should not get new" do
		get :new, line_id: @line.slug
		assert_no_access
	end

	test "should not create station" do
		post :create, line_id: @line.slug, station: { active: @station.active, description: @station.description, line_id: @station.line_id, name: @station.name }
		assert_no_access
	end
	
	test "should not get edit" do
		get :edit, line_id: @line.slug, id: @station.slug
		assert_no_access
	end

	test "should not update station" do
		patch :update, line_id: @line.slug, id: @station.slug, station: { active: @station.active, description: @station.description, line_id: @station.line_id, name: @station.name, slug: @station.slug }
		assert_no_access
	end

	test "should not destroy station" do
		delete :destroy, line_id: @line.slug, id: @station.slug
		assert_no_access
	end
end
