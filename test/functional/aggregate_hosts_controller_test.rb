require 'test_helper'

class AggregateHostsControllerTest < ActionController::TestCase
  setup do
    @aggregate_host = aggregate_hosts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aggregate_hosts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aggregate_host" do
    assert_difference('AggregateHost.count') do
      post :create, aggregate_host: { aggregate_id: @aggregate_host.aggregate_id, created_at: @aggregate_host.created_at, deleted: @aggregate_host.deleted, deleted_at: @aggregate_host.deleted_at, host: @aggregate_host.host, updated_at: @aggregate_host.updated_at }
    end

    assert_redirected_to aggregate_host_path(assigns(:aggregate_host))
  end

  test "should show aggregate_host" do
    get :show, id: @aggregate_host
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aggregate_host
    assert_response :success
  end

  test "should update aggregate_host" do
    put :update, id: @aggregate_host, aggregate_host: { aggregate_id: @aggregate_host.aggregate_id, created_at: @aggregate_host.created_at, deleted: @aggregate_host.deleted, deleted_at: @aggregate_host.deleted_at, host: @aggregate_host.host, updated_at: @aggregate_host.updated_at }
    assert_redirected_to aggregate_host_path(assigns(:aggregate_host))
  end

  test "should destroy aggregate_host" do
    assert_difference('AggregateHost.count', -1) do
      delete :destroy, id: @aggregate_host
    end

    assert_redirected_to aggregate_hosts_path
  end
end
