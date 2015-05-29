require 'test_helper'

class EmployeeRoomsControllerTest < ActionController::TestCase
  setup do
    @employee_room = employee_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_room" do
    assert_difference('EmployeeRoom.count') do
      post :create, employee_room: { employee_id: @employee_room.employee_id, room_id: @employee_room.room_id }
    end

    assert_redirected_to employee_room_path(assigns(:employee_room))
  end

  test "should show employee_room" do
    get :show, id: @employee_room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_room
    assert_response :success
  end

  test "should update employee_room" do
    patch :update, id: @employee_room, employee_room: { employee_id: @employee_room.employee_id, room_id: @employee_room.room_id }
    assert_redirected_to employee_room_path(assigns(:employee_room))
  end

  test "should destroy employee_room" do
    assert_difference('EmployeeRoom.count', -1) do
      delete :destroy, id: @employee_room
    end

    assert_redirected_to employee_rooms_path
  end
end
