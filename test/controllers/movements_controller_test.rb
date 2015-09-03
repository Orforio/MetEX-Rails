require 'test_helper'

class MovementsControllerTest < ActionController::TestCase
  setup do
    @movement = movements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movement" do
    assert_difference('Movement.count') do
      post :create, movement: { down_allowed: @movement.down_allowed, down_station_id: @movement.down_station_id, length: @movement.length, up_allowed: @movement.up_allowed, up_station_id: @movement.up_station_id }
    end

    assert_redirected_to movement_path(assigns(:movement))
  end

  test "should show movement" do
    get :show, id: @movement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movement
    assert_response :success
  end

  test "should update movement" do
    patch :update, id: @movement, movement: { down_allowed: @movement.down_allowed, down_station_id: @movement.down_station_id, length: @movement.length, up_allowed: @movement.up_allowed, up_station_id: @movement.up_station_id }
    assert_redirected_to movement_path(assigns(:movement))
  end

  test "should destroy movement" do
    assert_difference('Movement.count', -1) do
      delete :destroy, id: @movement
    end

    assert_redirected_to movements_path
  end
end
