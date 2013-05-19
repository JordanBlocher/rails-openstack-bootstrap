require 'test_helper'

class FixedIpsControllerTest < ActionController::TestCase
  setup do
    @fixed_ip = fixed_ips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fixed_ips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fixed_ip" do
    assert_difference('FixedIp.count') do
      post :create, fixed_ip: { address: @fixed_ip.address, allocated: @fixed_ip.allocated, created_at: @fixed_ip.created_at, deleted: @fixed_ip.deleted, deleted_at: @fixed_ip.deleted_at, host: @fixed_ip.host, instance_id: @fixed_ip.instance_id, leased: @fixed_ip.leased, network_id: @fixed_ip.network_id, reserved: @fixed_ip.reserved, updated_at: @fixed_ip.updated_at, virtual_interface_id: @fixed_ip.virtual_interface_id }
    end

    assert_redirected_to fixed_ip_path(assigns(:fixed_ip))
  end

  test "should show fixed_ip" do
    get :show, id: @fixed_ip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fixed_ip
    assert_response :success
  end

  test "should update fixed_ip" do
    put :update, id: @fixed_ip, fixed_ip: { address: @fixed_ip.address, allocated: @fixed_ip.allocated, created_at: @fixed_ip.created_at, deleted: @fixed_ip.deleted, deleted_at: @fixed_ip.deleted_at, host: @fixed_ip.host, instance_id: @fixed_ip.instance_id, leased: @fixed_ip.leased, network_id: @fixed_ip.network_id, reserved: @fixed_ip.reserved, updated_at: @fixed_ip.updated_at, virtual_interface_id: @fixed_ip.virtual_interface_id }
    assert_redirected_to fixed_ip_path(assigns(:fixed_ip))
  end

  test "should destroy fixed_ip" do
    assert_difference('FixedIp.count', -1) do
      delete :destroy, id: @fixed_ip
    end

    assert_redirected_to fixed_ips_path
  end
end
