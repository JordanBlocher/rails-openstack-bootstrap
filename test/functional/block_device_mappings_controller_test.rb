require 'test_helper'

class BlockDeviceMappingsControllerTest < ActionController::TestCase
  setup do
    @block_device_mapping = block_device_mappings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:block_device_mappings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create block_device_mapping" do
    assert_difference('BlockDeviceMapping.count') do
      post :create, block_device_mapping: { connection_info: @block_device_mapping.connection_info, created_at: @block_device_mapping.created_at, delete_on_termination: @block_device_mapping.delete_on_termination, deleted: @block_device_mapping.deleted, deleted_at: @block_device_mapping.deleted_at, device_name: @block_device_mapping.device_name, instance_id: @block_device_mapping.instance_id, no_device: @block_device_mapping.no_device, snapshot_id: @block_device_mapping.snapshot_id, updated_at: @block_device_mapping.updated_at, virtual_name: @block_device_mapping.virtual_name, volume_id: @block_device_mapping.volume_id, volume_size: @block_device_mapping.volume_size }
    end

    assert_redirected_to block_device_mapping_path(assigns(:block_device_mapping))
  end

  test "should show block_device_mapping" do
    get :show, id: @block_device_mapping
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @block_device_mapping
    assert_response :success
  end

  test "should update block_device_mapping" do
    put :update, id: @block_device_mapping, block_device_mapping: { connection_info: @block_device_mapping.connection_info, created_at: @block_device_mapping.created_at, delete_on_termination: @block_device_mapping.delete_on_termination, deleted: @block_device_mapping.deleted, deleted_at: @block_device_mapping.deleted_at, device_name: @block_device_mapping.device_name, instance_id: @block_device_mapping.instance_id, no_device: @block_device_mapping.no_device, snapshot_id: @block_device_mapping.snapshot_id, updated_at: @block_device_mapping.updated_at, virtual_name: @block_device_mapping.virtual_name, volume_id: @block_device_mapping.volume_id, volume_size: @block_device_mapping.volume_size }
    assert_redirected_to block_device_mapping_path(assigns(:block_device_mapping))
  end

  test "should destroy block_device_mapping" do
    assert_difference('BlockDeviceMapping.count', -1) do
      delete :destroy, id: @block_device_mapping
    end

    assert_redirected_to block_device_mappings_path
  end
end
