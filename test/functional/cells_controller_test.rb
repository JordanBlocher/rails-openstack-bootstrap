require 'test_helper'

class CellsControllerTest < ActionController::TestCase
  setup do
    @cell = cells(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cells)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cell" do
    assert_difference('Cell.count') do
      post :create, cell: { api_url: @cell.api_url, created_at: @cell.created_at, deleted: @cell.deleted, deleted_at: @cell.deleted_at, is_parent: @cell.is_parent, name: @cell.name, password: @cell.password, rpc_host: @cell.rpc_host, rpc_port: @cell.rpc_port, rpc_virtual_host: @cell.rpc_virtual_host, updated_at: @cell.updated_at, username: @cell.username, weight_offset: @cell.weight_offset, weight_scale: @cell.weight_scale }
    end

    assert_redirected_to cell_path(assigns(:cell))
  end

  test "should show cell" do
    get :show, id: @cell
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cell
    assert_response :success
  end

  test "should update cell" do
    put :update, id: @cell, cell: { api_url: @cell.api_url, created_at: @cell.created_at, deleted: @cell.deleted, deleted_at: @cell.deleted_at, is_parent: @cell.is_parent, name: @cell.name, password: @cell.password, rpc_host: @cell.rpc_host, rpc_port: @cell.rpc_port, rpc_virtual_host: @cell.rpc_virtual_host, updated_at: @cell.updated_at, username: @cell.username, weight_offset: @cell.weight_offset, weight_scale: @cell.weight_scale }
    assert_redirected_to cell_path(assigns(:cell))
  end

  test "should destroy cell" do
    assert_difference('Cell.count', -1) do
      delete :destroy, id: @cell
    end

    assert_redirected_to cells_path
  end
end
