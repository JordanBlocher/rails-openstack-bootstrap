require 'test_helper'

class ConsolesControllerTest < ActionController::TestCase
  setup do
    @console = consoles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consoles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create console" do
    assert_difference('Console.count') do
      post :create, console: { created_at: @console.created_at, deleted: @console.deleted, deleted_at: @console.deleted_at, instance_id: @console.instance_id, instance_name: @console.instance_name, password: @console.password, pool_id: @console.pool_id, port: @console.port, updated_at: @console.updated_at }
    end

    assert_redirected_to console_path(assigns(:console))
  end

  test "should show console" do
    get :show, id: @console
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @console
    assert_response :success
  end

  test "should update console" do
    put :update, id: @console, console: { created_at: @console.created_at, deleted: @console.deleted, deleted_at: @console.deleted_at, instance_id: @console.instance_id, instance_name: @console.instance_name, password: @console.password, pool_id: @console.pool_id, port: @console.port, updated_at: @console.updated_at }
    assert_redirected_to console_path(assigns(:console))
  end

  test "should destroy console" do
    assert_difference('Console.count', -1) do
      delete :destroy, id: @console
    end

    assert_redirected_to consoles_path
  end
end
