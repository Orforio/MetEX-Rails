require 'test_helper'

class InterchangesControllerTest < ActionController::TestCase
  setup do
    @interchange = interchanges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interchanges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interchange" do
    assert_difference('Interchange.count') do
      post :create, interchange: { name: @interchange.name }
    end

    assert_redirected_to interchange_path(assigns(:interchange))
  end

  test "should show interchange" do
    get :show, id: @interchange
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interchange
    assert_response :success
  end

  test "should update interchange" do
    patch :update, id: @interchange, interchange: { name: @interchange.name }
    assert_redirected_to interchange_path(assigns(:interchange))
  end

  test "should destroy interchange" do
    assert_difference('Interchange.count', -1) do
      delete :destroy, id: @interchange
    end

    assert_redirected_to interchanges_path
  end
end
