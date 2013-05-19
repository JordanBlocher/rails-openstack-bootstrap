require 'test_helper'

class SecurityGroupsControllerTest < ActionController::TestCase
  setup do
    @security_group = security_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:security_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create security_group" do
    assert_difference('SecurityGroup.count') do
      post :create, security_group: { created_at: @security_group.created_at, deleted: @security_group.deleted, deleted_at: @security_group.deleted_at, description: @security_group.description, name: @security_group.name, project_id: @security_group.project_id, updated_at: @security_group.updated_at, user_id: @security_group.user_id }
    end

    assert_redirected_to security_group_path(assigns(:security_group))
  end

  test "should show security_group" do
    get :show, id: @security_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @security_group
    assert_response :success
  end

  test "should update security_group" do
    put :update, id: @security_group, security_group: { created_at: @security_group.created_at, deleted: @security_group.deleted, deleted_at: @security_group.deleted_at, description: @security_group.description, name: @security_group.name, project_id: @security_group.project_id, updated_at: @security_group.updated_at, user_id: @security_group.user_id }
    assert_redirected_to security_group_path(assigns(:security_group))
  end

  test "should destroy security_group" do
    assert_difference('SecurityGroup.count', -1) do
      delete :destroy, id: @security_group
    end

    assert_redirected_to security_groups_path
  end
end
