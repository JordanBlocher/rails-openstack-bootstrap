require 'test_helper'

class ConsolePoolsControllerTest < ActionController::TestCase
  setup do
    @console_pool = console_pools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:console_pools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create console_pool" do
    assert_difference('ConsolePool.count') do
      post :create, console_pool: { address: @console_pool.address, compute_host: @console_pool.compute_host, console_type: @console_pool.console_type, created_at: @console_pool.created_at, deleted: @console_pool.deleted, deleted_at: @console_pool.deleted_at, host: @console_pool.host, password: @console_pool.password, public_hostname: @console_pool.public_hostname, updated_at: @console_pool.updated_at, username: @console_pool.username }
    end

    assert_redirected_to console_pool_path(assigns(:console_pool))
  end

  test "should show console_pool" do
    get :show, id: @console_pool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @console_pool
    assert_response :success
  end

  test "should update console_pool" do
    put :update, id: @console_pool, console_pool: { address: @console_pool.address, compute_host: @console_pool.compute_host, console_type: @console_pool.console_type, created_at: @console_pool.created_at, deleted: @console_pool.deleted, deleted_at: @console_pool.deleted_at, host: @console_pool.host, password: @console_pool.password, public_hostname: @console_pool.public_hostname, updated_at: @console_pool.updated_at, username: @console_pool.username }
    assert_redirected_to console_pool_path(assigns(:console_pool))
  end

  test "should destroy console_pool" do
    assert_difference('ConsolePool.count', -1) do
      delete :destroy, id: @console_pool
    end

    assert_redirected_to console_pools_path
  end
end
