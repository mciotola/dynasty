require 'test_helper'

class RegimesControllerTest < ActionController::TestCase
  setup do
    @regime = regimes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regimes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regime" do
    assert_difference('Regime.count') do
      post :create, regime: @regime.attributes
    end

    assert_redirected_to regime_path(assigns(:regime))
  end

  test "should show regime" do
    get :show, id: @regime.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regime.to_param
    assert_response :success
  end

  test "should update regime" do
    put :update, id: @regime.to_param, regime: @regime.attributes
    assert_redirected_to regime_path(assigns(:regime))
  end

  test "should destroy regime" do
    assert_difference('Regime.count', -1) do
      delete :destroy, id: @regime.to_param
    end

    assert_redirected_to regimes_path
  end
end
