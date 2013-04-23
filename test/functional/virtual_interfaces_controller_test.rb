require 'test_helper'

class VirtualInterfacesControllerTest < ActionController::TestCase
  setup do
    @virtual_interface = virtual_interfaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:virtual_interfaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create virtual_interface" do
    assert_difference('VirtualInterface.count') do
      post :create, virtual_interface: { address: @virtual_interface.address, created_at: @virtual_interface.created_at, deleted: @virtual_interface.deleted, deleted_at: @virtual_interface.deleted_at, instance_id: @virtual_interface.instance_id, network_id: @virtual_interface.network_id, updated_at: @virtual_interface.updated_at, uuid: @virtual_interface.uuid }
    end

    assert_redirected_to virtual_interface_path(assigns(:virtual_interface))
  end

  test "should show virtual_interface" do
    get :show, id: @virtual_interface
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @virtual_interface
    assert_response :success
  end

  test "should update virtual_interface" do
    put :update, id: @virtual_interface, virtual_interface: { address: @virtual_interface.address, created_at: @virtual_interface.created_at, deleted: @virtual_interface.deleted, deleted_at: @virtual_interface.deleted_at, instance_id: @virtual_interface.instance_id, network_id: @virtual_interface.network_id, updated_at: @virtual_interface.updated_at, uuid: @virtual_interface.uuid }
    assert_redirected_to virtual_interface_path(assigns(:virtual_interface))
  end

  test "should destroy virtual_interface" do
    assert_difference('VirtualInterface.count', -1) do
      delete :destroy, id: @virtual_interface
    end

    assert_redirected_to virtual_interfaces_path
  end
end
