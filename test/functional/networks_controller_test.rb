require 'test_helper'

class NetworksControllerTest < ActionController::TestCase
  setup do
    @network = networks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:networks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create network" do
    assert_difference('Network.count') do
      post :create, network: { bridge: @network.bridge, bridge_interface: @network.bridge_interface, broadcast: @network.broadcast, cidr: @network.cidr, cidr_v6: @network.cidr_v6, created_at: @network.created_at, deleted: @network.deleted, deleted_at: @network.deleted_at, dhcp_start: @network.dhcp_start, dns1: @network.dns1, dns2: @network.dns2, gateway: @network.gateway, gateway_v6: @network.gateway_v6, host: @network.host, injected: @network.injected, label: @network.label, multi_host: @network.multi_host, netmask: @network.netmask, netmask_v6: @network.netmask_v6, priority: @network.priority, project_id: @network.project_id, rxtx_base: @network.rxtx_base, updated_at: @network.updated_at, uuid: @network.uuid, vlan: @network.vlan, vpn_private_address: @network.vpn_private_address, vpn_public_address: @network.vpn_public_address, vpn_public_port: @network.vpn_public_port }
    end

    assert_redirected_to network_path(assigns(:network))
  end

  test "should show network" do
    get :show, id: @network
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @network
    assert_response :success
  end

  test "should update network" do
    put :update, id: @network, network: { bridge: @network.bridge, bridge_interface: @network.bridge_interface, broadcast: @network.broadcast, cidr: @network.cidr, cidr_v6: @network.cidr_v6, created_at: @network.created_at, deleted: @network.deleted, deleted_at: @network.deleted_at, dhcp_start: @network.dhcp_start, dns1: @network.dns1, dns2: @network.dns2, gateway: @network.gateway, gateway_v6: @network.gateway_v6, host: @network.host, injected: @network.injected, label: @network.label, multi_host: @network.multi_host, netmask: @network.netmask, netmask_v6: @network.netmask_v6, priority: @network.priority, project_id: @network.project_id, rxtx_base: @network.rxtx_base, updated_at: @network.updated_at, uuid: @network.uuid, vlan: @network.vlan, vpn_private_address: @network.vpn_private_address, vpn_public_address: @network.vpn_public_address, vpn_public_port: @network.vpn_public_port }
    assert_redirected_to network_path(assigns(:network))
  end

  test "should destroy network" do
    assert_difference('Network.count', -1) do
      delete :destroy, id: @network
    end

    assert_redirected_to networks_path
  end
end
