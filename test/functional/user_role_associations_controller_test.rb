require 'test_helper'

class UserRoleAssociationsControllerTest < ActionController::TestCase
  setup do
    @user_role_association = user_role_associations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_role_associations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_role_association" do
    assert_difference('UserRoleAssociation.count') do
      post :create, user_role_association: { created_at: @user_role_association.created_at, deleted: @user_role_association.deleted, deleted_at: @user_role_association.deleted_at, role: @user_role_association.role, updated_at: @user_role_association.updated_at, user_id: @user_role_association.user_id }
    end

    assert_redirected_to user_role_association_path(assigns(:user_role_association))
  end

  test "should show user_role_association" do
    get :show, id: @user_role_association
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_role_association
    assert_response :success
  end

  test "should update user_role_association" do
    put :update, id: @user_role_association, user_role_association: { created_at: @user_role_association.created_at, deleted: @user_role_association.deleted, deleted_at: @user_role_association.deleted_at, role: @user_role_association.role, updated_at: @user_role_association.updated_at, user_id: @user_role_association.user_id }
    assert_redirected_to user_role_association_path(assigns(:user_role_association))
  end

  test "should destroy user_role_association" do
    assert_difference('UserRoleAssociation.count', -1) do
      delete :destroy, id: @user_role_association
    end

    assert_redirected_to user_role_associations_path
  end
end
