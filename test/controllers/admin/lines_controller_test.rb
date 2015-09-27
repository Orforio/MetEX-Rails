require 'test_helper'

class Admin::LinesControllerTest < ActionController::TestCase
	setup do
		@line = FactoryGirl.create(:line)
	end
	
	test "should not get new" do
		get :new
		assert_no_access
	end

	test "should not create line" do
		post :create, line: { active: @line.active, description: @line.description, name: @line.name }
		assert_no_access
	end

	test "should not show line" do
		get :show, id: @line
		assert_no_access
	end

	test "should not get edit" do
		get :edit, id: @line
		assert_no_access
	end

	test "should not update line" do
		patch :update, id: @line, line: { active: @line.active, description: @line.description, name: @line.name }
		assert_no_access
	end

	test "should not destroy line" do
		delete :destroy, id: @line
		assert_no_access
	end
end
