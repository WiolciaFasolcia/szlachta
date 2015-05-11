require 'test_helper'

class RoomKeysControllerTest < ActionController::TestCase
  setup do
    @room_key = room_keys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:room_keys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room_key" do
    assert_difference('RoomKey.count') do
      post :create, room_key: { klucz: @room_key.klucz, zapasowy: @room_key.zapasowy }
    end

    assert_redirected_to room_key_path(assigns(:room_key))
  end

  test "should show room_key" do
    get :show, id: @room_key
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room_key
    assert_response :success
  end

  test "should update room_key" do
    patch :update, id: @room_key, room_key: { klucz: @room_key.klucz, zapasowy: @room_key.zapasowy }
    assert_redirected_to room_key_path(assigns(:room_key))
  end

  test "should destroy room_key" do
    assert_difference('RoomKey.count', -1) do
      delete :destroy, id: @room_key
    end

    assert_redirected_to room_keys_path
  end
end
