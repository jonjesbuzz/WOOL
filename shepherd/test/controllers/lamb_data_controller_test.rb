require 'test_helper'

class LambDataControllerTest < ActionController::TestCase
  setup do
    @lamb_datum = lamb_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lamb_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lamb_datum" do
    assert_difference('LambDatum.count') do
      post :create, lamb_datum: { activity: @lamb_datum.activity, identifier: @lamb_datum.identifier, light: @lamb_datum.light }
    end

    assert_redirected_to lamb_datum_path(assigns(:lamb_datum))
  end

  test "should show lamb_datum" do
    get :show, id: @lamb_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lamb_datum
    assert_response :success
  end

  test "should update lamb_datum" do
    patch :update, id: @lamb_datum, lamb_datum: { activity: @lamb_datum.activity, identifier: @lamb_datum.identifier, light: @lamb_datum.light }
    assert_redirected_to lamb_datum_path(assigns(:lamb_datum))
  end

  test "should destroy lamb_datum" do
    assert_difference('LambDatum.count', -1) do
      delete :destroy, id: @lamb_datum
    end

    assert_redirected_to lamb_data_path
  end
end
