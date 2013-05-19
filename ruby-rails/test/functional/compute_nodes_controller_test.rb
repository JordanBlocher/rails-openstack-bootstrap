require 'test_helper'

class ComputeNodesControllerTest < ActionController::TestCase
  setup do
    @compute_node = compute_nodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compute_nodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compute_node" do
    assert_difference('ComputeNode.count') do
      post :create, compute_node: { cpu_info: @compute_node.cpu_info, created_at: @compute_node.created_at, current_workload: @compute_node.current_workload, deleted: @compute_node.deleted, deleted_at: @compute_node.deleted_at, disk_available_least: @compute_node.disk_available_least, free_disk_gb: @compute_node.free_disk_gb, free_ram_mb: @compute_node.free_ram_mb, hypervisor_hostname: @compute_node.hypervisor_hostname, hypervisor_type: @compute_node.hypervisor_type, hypervisor_version: @compute_node.hypervisor_version, local_gb: @compute_node.local_gb, local_gb_used: @compute_node.local_gb_used, memory_mb: @compute_node.memory_mb, memory_mb_used: @compute_node.memory_mb_used, running_vms: @compute_node.running_vms, service_id: @compute_node.service_id, updated_at: @compute_node.updated_at, vcpus: @compute_node.vcpus, vcpus_used: @compute_node.vcpus_used }
    end

    assert_redirected_to compute_node_path(assigns(:compute_node))
  end

  test "should show compute_node" do
    get :show, id: @compute_node
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compute_node
    assert_response :success
  end

  test "should update compute_node" do
    put :update, id: @compute_node, compute_node: { cpu_info: @compute_node.cpu_info, created_at: @compute_node.created_at, current_workload: @compute_node.current_workload, deleted: @compute_node.deleted, deleted_at: @compute_node.deleted_at, disk_available_least: @compute_node.disk_available_least, free_disk_gb: @compute_node.free_disk_gb, free_ram_mb: @compute_node.free_ram_mb, hypervisor_hostname: @compute_node.hypervisor_hostname, hypervisor_type: @compute_node.hypervisor_type, hypervisor_version: @compute_node.hypervisor_version, local_gb: @compute_node.local_gb, local_gb_used: @compute_node.local_gb_used, memory_mb: @compute_node.memory_mb, memory_mb_used: @compute_node.memory_mb_used, running_vms: @compute_node.running_vms, service_id: @compute_node.service_id, updated_at: @compute_node.updated_at, vcpus: @compute_node.vcpus, vcpus_used: @compute_node.vcpus_used }
    assert_redirected_to compute_node_path(assigns(:compute_node))
  end

  test "should destroy compute_node" do
    assert_difference('ComputeNode.count', -1) do
      delete :destroy, id: @compute_node
    end

    assert_redirected_to compute_nodes_path
  end
end
