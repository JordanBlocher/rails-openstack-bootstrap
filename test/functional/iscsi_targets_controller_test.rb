require 'test_helper'

class IscsiTargetsControllerTest < ActionController::TestCase
  setup do
    @iscsi_target = iscsi_targets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iscsi_targets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iscsi_target" do
    assert_difference('IscsiTarget.count') do
      post :create, iscsi_target: { created_at: @iscsi_target.created_at, deleted: @iscsi_target.deleted, deleted_at: @iscsi_target.deleted_at, host: @iscsi_target.host, target_num: @iscsi_target.target_num, updated_at: @iscsi_target.updated_at, volume_id: @iscsi_target.volume_id }
    end

    assert_redirected_to iscsi_target_path(assigns(:iscsi_target))
  end

  test "should show iscsi_target" do
    get :show, id: @iscsi_target
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iscsi_target
    assert_response :success
  end

  test "should update iscsi_target" do
    put :update, id: @iscsi_target, iscsi_target: { created_at: @iscsi_target.created_at, deleted: @iscsi_target.deleted, deleted_at: @iscsi_target.deleted_at, host: @iscsi_target.host, target_num: @iscsi_target.target_num, updated_at: @iscsi_target.updated_at, volume_id: @iscsi_target.volume_id }
    assert_redirected_to iscsi_target_path(assigns(:iscsi_target))
  end

  test "should destroy iscsi_target" do
    assert_difference('IscsiTarget.count', -1) do
      delete :destroy, id: @iscsi_target
    end

    assert_redirected_to iscsi_targets_path
  end
end
