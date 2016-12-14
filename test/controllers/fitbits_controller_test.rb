require 'test_helper'

class FitbitsControllerTest < ActionController::TestCase
  setup do
    @fitbit = fitbits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fitbits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fitbit" do
    assert_difference('Fitbit.count') do
      post :create, fitbit: { battery_life_in_hours: @fitbit.battery_life_in_hours, colour: @fitbit.colour, display: @fitbit.display, name: @fitbit.name, picture: @fitbit.picture }
    end

    assert_redirected_to fitbit_path(assigns(:fitbit))
  end

  test "should show fitbit" do
    get :show, id: @fitbit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fitbit
    assert_response :success
  end

  test "should update fitbit" do
    patch :update, id: @fitbit, fitbit: { battery_life_in_hours: @fitbit.battery_life_in_hours, colour: @fitbit.colour, display: @fitbit.display, name: @fitbit.name, picture: @fitbit.picture }
    assert_redirected_to fitbit_path(assigns(:fitbit))
  end

  test "should destroy fitbit" do
    assert_difference('Fitbit.count', -1) do
      delete :destroy, id: @fitbit
    end

    assert_redirected_to fitbits_path
  end
end
