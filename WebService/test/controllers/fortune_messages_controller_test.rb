require 'test_helper'

class FortuneMessagesControllerTest < ActionController::TestCase
  setup do
    @fortune_message = fortune_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fortune_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fortune_message" do
    assert_difference('FortuneMessage.count') do
      post :create, fortune_message: { content: @fortune_message.content }
    end

    assert_redirected_to fortune_message_path(assigns(:fortune_message))
  end

  test "should show fortune_message" do
    get :show, id: @fortune_message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fortune_message
    assert_response :success
  end

  test "should update fortune_message" do
    patch :update, id: @fortune_message, fortune_message: { content: @fortune_message.content }
    assert_redirected_to fortune_message_path(assigns(:fortune_message))
  end

  test "should destroy fortune_message" do
    assert_difference('FortuneMessage.count', -1) do
      delete :destroy, id: @fortune_message
    end

    assert_redirected_to fortune_messages_path
  end
end
