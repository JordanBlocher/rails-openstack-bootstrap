require 'test_helper'

class FloatingIpsControllerTest < ActionController::TestCase
  setup do
    @floating_ip = floating_ips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:floating_ips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create floating_ip" do
    assert_difference('FloatingIp.count') do
      post :create, floating_ip: { address: @floating_ip.address, auto_assigned: @floating_ip.auto_assigned, created_at: @floating_ip.created_at, deleted: @floating_ip.deleted, deleted_at: @floating_ip.deleted_at, fixed_ip_id: @floating_ip.fixed_ip_id, host: @floating_ip.host, interface: @floating_ip.interface, pool: @floating_ip.pool, project_id: @floating_ip.project_id, updated_at: @floating_ip.updated_at }
    end

    assert_redirected_to floating_ip_path(assigns(:floating_ip))
  end

  test "should show floating_ip" do
    get :show, id: @floating_ip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @floating_ip
    assert_response :success
  end

  test "should update floating_ip" do
    put :update, id: @floating_ip, floating_ip: { address: @floating_ip.address, auto_assigned: @floating_ip.auto_assigned, created_at: @floating_ip.created_at, deleted: @floating_ip.deleted, deleted_at: @floating_ip.deleted_at, fixed_ip_id: @floating_ip.fixed_ip_id, host: @floating_ip.host, interface: @floating_ip.interface, pool: @floating_ip.pool, project_id: @floating_ip.project_id, updated_at: @floating_ip.updated_at }
    assert_redirected_to floating_ip_path(assigns(:floating_ip))
  end

  test "should destroy floating_ip" do
    assert_difference('FloatingIp.count', -1) do
      delete :destroy, id: @floating_ip
    end

    assert_redirected_to floating_ips_path
  end
end
