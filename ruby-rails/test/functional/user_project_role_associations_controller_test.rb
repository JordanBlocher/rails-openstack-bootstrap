require 'test_helper'

class UserProjectRoleAssociationsControllerTest < ActionController::TestCase
  setup do
    @user_project_role_association = user_project_role_associations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_project_role_associations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_project_role_association" do
    assert_difference('UserProjectRoleAssociation.count') do
      post :create, user_project_role_association: { created_at: @user_project_role_association.created_at, deleted: @user_project_role_association.deleted, deleted_at: @user_project_role_association.deleted_at, project_id: @user_project_role_association.project_id, role: @user_project_role_association.role, updated_at: @user_project_role_association.updated_at, user_id: @user_project_role_association.user_id }
    end

    assert_redirected_to user_project_role_association_path(assigns(:user_project_role_association))
  end

  test "should show user_project_role_association" do
    get :show, id: @user_project_role_association
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_project_role_association
    assert_response :success
  end

  test "should update user_project_role_association" do
    put :update, id: @user_project_role_association, user_project_role_association: { created_at: @user_project_role_association.created_at, deleted: @user_project_role_association.deleted, deleted_at: @user_project_role_association.deleted_at, project_id: @user_project_role_association.project_id, role: @user_project_role_association.role, updated_at: @user_project_role_association.updated_at, user_id: @user_project_role_association.user_id }
    assert_redirected_to user_project_role_association_path(assigns(:user_project_role_association))
  end

  test "should destroy user_project_role_association" do
    assert_difference('UserProjectRoleAssociation.count', -1) do
      delete :destroy, id: @user_project_role_association
    end

    assert_redirected_to user_project_role_associations_path
  end
end
