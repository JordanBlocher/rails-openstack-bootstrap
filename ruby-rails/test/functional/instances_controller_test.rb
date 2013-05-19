require 'test_helper'

class InstancesControllerTest < ActionController::TestCase
  setup do
    @instance = instances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instance" do
    assert_difference('Instance.count') do
      post :create, instance: { access_ip_v4: @instance.access_ip_v4, access_ip_v6: @instance.access_ip_v6, architecture: @instance.architecture, auto_disk_config: @instance.auto_disk_config, availability_zone: @instance.availability_zone, cell_name: @instance.cell_name, config_drive: @instance.config_drive, created_at: @instance.created_at, default_ephemeral_device: @instance.default_ephemeral_device, default_swap_device: @instance.default_swap_device, deleted: @instance.deleted, deleted_at: @instance.deleted_at, disable_terminate: @instance.disable_terminate, display_description: @instance.display_description, display_name: @instance.display_name, ephemeral_gb: @instance.ephemeral_gb, host: @instance.host, hostname: @instance.hostname, image_ref: @instance.image_ref, instance_type_id: @instance.instance_type_id, internal_id: @instance.internal_id, kernel_id: @instance.kernel_id, key_data: @instance.key_data, key_name: @instance.key_name, launch_index: @instance.launch_index, launched_at: @instance.launched_at, launched_on: @instance.launched_on, locked: @instance.locked, memory_mb: @instance.memory_mb, os_type: @instance.os_type, power_state: @instance.power_state, progress: @instance.progress, project_id: @instance.project_id, ramdisk_id: @instance.ramdisk_id, reservation_id: @instance.reservation_id, root_device_name: @instance.root_device_name, root_gb: @instance.root_gb, scheduled_at: @instance.scheduled_at, server_name: @instance.server_name, shutdown_terminate: @instance.shutdown_terminate, task_state: @instance.task_state, terminated_at: @instance.terminated_at, updated_at: @instance.updated_at, user_data: @instance.user_data, user_id: @instance.user_id, uuid: @instance.uuid, vcpus: @instance.vcpus, vm_mode: @instance.vm_mode, vm_state: @instance.vm_state }
    end

    assert_redirected_to instance_path(assigns(:instance))
  end

  test "should show instance" do
    get :show, id: @instance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instance
    assert_response :success
  end

  test "should update instance" do
    put :update, id: @instance, instance: { access_ip_v4: @instance.access_ip_v4, access_ip_v6: @instance.access_ip_v6, architecture: @instance.architecture, auto_disk_config: @instance.auto_disk_config, availability_zone: @instance.availability_zone, cell_name: @instance.cell_name, config_drive: @instance.config_drive, created_at: @instance.created_at, default_ephemeral_device: @instance.default_ephemeral_device, default_swap_device: @instance.default_swap_device, deleted: @instance.deleted, deleted_at: @instance.deleted_at, disable_terminate: @instance.disable_terminate, display_description: @instance.display_description, display_name: @instance.display_name, ephemeral_gb: @instance.ephemeral_gb, host: @instance.host, hostname: @instance.hostname, image_ref: @instance.image_ref, instance_type_id: @instance.instance_type_id, internal_id: @instance.internal_id, kernel_id: @instance.kernel_id, key_data: @instance.key_data, key_name: @instance.key_name, launch_index: @instance.launch_index, launched_at: @instance.launched_at, launched_on: @instance.launched_on, locked: @instance.locked, memory_mb: @instance.memory_mb, os_type: @instance.os_type, power_state: @instance.power_state, progress: @instance.progress, project_id: @instance.project_id, ramdisk_id: @instance.ramdisk_id, reservation_id: @instance.reservation_id, root_device_name: @instance.root_device_name, root_gb: @instance.root_gb, scheduled_at: @instance.scheduled_at, server_name: @instance.server_name, shutdown_terminate: @instance.shutdown_terminate, task_state: @instance.task_state, terminated_at: @instance.terminated_at, updated_at: @instance.updated_at, user_data: @instance.user_data, user_id: @instance.user_id, uuid: @instance.uuid, vcpus: @instance.vcpus, vm_mode: @instance.vm_mode, vm_state: @instance.vm_state }
    assert_redirected_to instance_path(assigns(:instance))
  end

  test "should destroy instance" do
    assert_difference('Instance.count', -1) do
      delete :destroy, id: @instance
    end

    assert_redirected_to instances_path
  end
end
