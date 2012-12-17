require 'test_helper'

class AttendanceEntriesControllerTest < ActionController::TestCase
  setup do
    @attendance_entry = attendance_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attendance_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attendance_entry" do
    assert_difference('AttendanceEntry.count') do
      post :create, attendance_entry: @attendance_entry.attributes
    end

    assert_redirected_to attendance_entry_path(assigns(:attendance_entry))
  end

  test "should show attendance_entry" do
    get :show, id: @attendance_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attendance_entry
    assert_response :success
  end

  test "should update attendance_entry" do
    put :update, id: @attendance_entry, attendance_entry: @attendance_entry.attributes
    assert_redirected_to attendance_entry_path(assigns(:attendance_entry))
  end

  test "should destroy attendance_entry" do
    assert_difference('AttendanceEntry.count', -1) do
      delete :destroy, id: @attendance_entry
    end

    assert_redirected_to attendance_entries_path
  end
end
