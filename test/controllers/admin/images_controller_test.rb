require 'test_helper'

class Admin::ImagesControllerTest < ActionController::TestCase
	setup do
		@image = FactoryGirl.create(:image)
	end
	
	test "should not get index" do
		get :index
		assert_no_access
	end

	test "should not get new" do
		get :new
		assert_no_access
	end
	
	test "should not create image" do
		post :create, image: { alt: @image.alt, filename: @image.filename, imageable: @image.imageable, title: @image.title }
		assert_no_access
	end

	test "should not show image" do
		get :show, id: @image
		assert_no_access
	end

	test "should not get edit" do
		get :edit, id: @image
		assert_no_access
	end
	
	test "should not update image" do
		patch :update, id: @image, image: { alt: @image.alt, filename: @image.filename, imageable: @image.imageable, title: @image.title }
		assert_no_access
	end

	test "should not destroy image" do
		delete :destroy, id: @image
		assert_no_access
	end
end
