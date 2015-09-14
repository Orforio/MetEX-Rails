require 'test_helper'

class ImagesControllerTest < ActionController::TestCase
	setup do
		@image1 = images(:image1)
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
    post :create, image: { alt: @image1.alt, filename: @image1.filename, imageable: @image1.imageable, title: @image1.title }
    assert_no_access
  end

	test "should not show image" do
		get :show, id: @image1
		assert_no_access
	end

	test "should not get edit" do
		get :edit, id: @image1
		assert_no_access
	end
	
	test "should not update image" do
    patch :update, id: @image1, image: { alt: @image1.alt, filename: @image1.filename, imageable: @image1.imageable, title: @image1.title }
    assert_no_access
  end

  test "should not destroy image" do
    delete :destroy, id: @image1
    assert_no_access
  end
end