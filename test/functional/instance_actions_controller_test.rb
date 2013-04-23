require 'test_helper'

class InstanceActionsControllerTest < ActionController::TestCase
  setup do
    @instance_action = instance_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instance_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instance_action" do
    assert_difference('InstanceAction.count') do
      post :create, instance_action: { action: @instance_action.action, created_at: @instance_action.created_at, deleted: @instance_action.deleted, deleted_at: @instance_action.deleted_at, error: @instance_action.error, instance_uuid: @instance_action.instance_uuid, updated_at: @instance_action.updated_at }
    end

    assert_redirected_to instance_action_path(assigns(:instance_action))
  end

  test "should show instance_action" do
    get :show, id: @instance_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instance_action
    assert_response :success
  end

  test "should update instance_action" do
    put :update, id: @instance_action, instance_action: { action: @instance_action.action, created_at: @instance_action.created_at, deleted: @instance_action.deleted, deleted_at: @instance_action.deleted_at, error: @instance_action.error, instance_uuid: @instance_action.instance_uuid, updated_at: @instance_action.updated_at }
    assert_redirected_to instance_action_path(assigns(:instance_action))
  end

  test "should destroy instance_action" do
    assert_difference('InstanceAction.count', -1) do
      delete :destroy, id: @instance_action
    end

    assert_redirected_to instance_actions_path
  end
end
