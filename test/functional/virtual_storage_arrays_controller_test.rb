require 'test_helper'

class VirtualStorageArraysControllerTest < ActionController::TestCase
  setup do
    @virtual_storage_array = virtual_storage_arrays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:virtual_storage_arrays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create virtual_storage_array" do
    assert_difference('VirtualStorageArray.count') do
      post :create, virtual_storage_array: { availability_zone: @virtual_storage_array.availability_zone, created_at: @virtual_storage_array.created_at, deleted: @virtual_storage_array.deleted, deleted_at: @virtual_storage_array.deleted_at, display_description: @virtual_storage_array.display_description, display_name: @virtual_storage_array.display_name, image_ref: @virtual_storage_array.image_ref, instance_type_id: @virtual_storage_array.instance_type_id, project_id: @virtual_storage_array.project_id, status: @virtual_storage_array.status, updated_at: @virtual_storage_array.updated_at, vc_count: @virtual_storage_array.vc_count, vol_count: @virtual_storage_array.vol_count }
    end

    assert_redirected_to virtual_storage_array_path(assigns(:virtual_storage_array))
  end

  test "should show virtual_storage_array" do
    get :show, id: @virtual_storage_array
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @virtual_storage_array
    assert_response :success
  end

  test "should update virtual_storage_array" do
    put :update, id: @virtual_storage_array, virtual_storage_array: { availability_zone: @virtual_storage_array.availability_zone, created_at: @virtual_storage_array.created_at, deleted: @virtual_storage_array.deleted, deleted_at: @virtual_storage_array.deleted_at, display_description: @virtual_storage_array.display_description, display_name: @virtual_storage_array.display_name, image_ref: @virtual_storage_array.image_ref, instance_type_id: @virtual_storage_array.instance_type_id, project_id: @virtual_storage_array.project_id, status: @virtual_storage_array.status, updated_at: @virtual_storage_array.updated_at, vc_count: @virtual_storage_array.vc_count, vol_count: @virtual_storage_array.vol_count }
    assert_redirected_to virtual_storage_array_path(assigns(:virtual_storage_array))
  end

  test "should destroy virtual_storage_array" do
    assert_difference('VirtualStorageArray.count', -1) do
      delete :destroy, id: @virtual_storage_array
    end

    assert_redirected_to virtual_storage_arrays_path
  end
end
