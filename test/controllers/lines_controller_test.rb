require 'test_helper'

class LinesControllerTest < ActionController::TestCase
	setup do
		@line1 = lines(:line1)
	end

	test "should get index" do
		get :index
		assert_response :success
		assert_not_nil assigns(:lines)
	end

	test "should not get new" do
		get :new
		assert_no_access
	end

	test "should not create line" do
		post :create, line: { active: @line1.active, description: @line1.description, name: @line1.name }
		assert_no_access
	end

	test "should not show line" do
		get :show, id: @line1
		assert_no_access
	end

	test "should not get edit" do
		get :edit, id: @line1
		assert_no_access
	end

	test "should not update line" do
		patch :update, id: @line1, line: { active: @line1.active, description: @line1.description, name: @line1.name }
		assert_no_access
	end

	test "should not destroy line" do
		delete :destroy, id: @line1
		assert_no_access
	end
end