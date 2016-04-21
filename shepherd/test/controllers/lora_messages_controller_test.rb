require 'test_helper'

class LoraMessagesControllerTest < ActionController::TestCase
  setup do
    @lora_message = lora_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lora_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lora_message" do
    assert_difference('LoraMessage.count') do
      post :create, lora_message: { payload: @lora_message.payload }
    end

    assert_redirected_to lora_message_path(assigns(:lora_message))
  end

  test "should show lora_message" do
    get :show, id: @lora_message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lora_message
    assert_response :success
  end

  test "should update lora_message" do
    patch :update, id: @lora_message, lora_message: { payload: @lora_message.payload }
    assert_redirected_to lora_message_path(assigns(:lora_message))
  end

  test "should destroy lora_message" do
    assert_difference('LoraMessage.count', -1) do
      delete :destroy, id: @lora_message
    end

    assert_redirected_to lora_messages_path
  end
end
