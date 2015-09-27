require 'test_helper'

class LinesControllerTest < ActionController::TestCase
	setup do
		@line = FactoryGirl.create(:line)
	end

	test "should get index" do
		get :index
		assert_response :success
		assert_not_nil assigns(:lines)
	end
end
