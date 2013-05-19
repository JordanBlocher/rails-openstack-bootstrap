require 'test_helper'

class InstanceInfoCachesControllerTest < ActionController::TestCase
  setup do
    @instance_info_cach = instance_info_caches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instance_info_caches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instance_info_cach" do
    assert_difference('InstanceInfoCach.count') do
      post :create, instance_info_cach: { created_at: @instance_info_cach.created_at, deleted: @instance_info_cach.deleted, deleted_at: @instance_info_cach.deleted_at, instance_id: @instance_info_cach.instance_id, network_info: @instance_info_cach.network_info, updated_at: @instance_info_cach.updated_at }
    end

    assert_redirected_to instance_info_cach_path(assigns(:instance_info_cach))
  end

  test "should show instance_info_cach" do
    get :show, id: @instance_info_cach
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instance_info_cach
    assert_response :success
  end

  test "should update instance_info_cach" do
    put :update, id: @instance_info_cach, instance_info_cach: { created_at: @instance_info_cach.created_at, deleted: @instance_info_cach.deleted, deleted_at: @instance_info_cach.deleted_at, instance_id: @instance_info_cach.instance_id, network_info: @instance_info_cach.network_info, updated_at: @instance_info_cach.updated_at }
    assert_redirected_to instance_info_cach_path(assigns(:instance_info_cach))
  end

  test "should destroy instance_info_cach" do
    assert_difference('InstanceInfoCach.count', -1) do
      delete :destroy, id: @instance_info_cach
    end

    assert_redirected_to instance_info_caches_path
  end
end
