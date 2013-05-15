require 'test_helper'

class UserCloudUserAssociationsControllerTest < ActionController::TestCase
  setup do
    @user_cloud_user_association = user_cloud_user_associations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_cloud_user_associations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_cloud_user_association" do
    assert_difference('UserCloudUserAssociation.count') do
      post :create, user_cloud_user_association: { cloud_user_id: @user_cloud_user_association.cloud_user_id, created_at: @user_cloud_user_association.created_at, deleted: @user_cloud_user_association.deleted, deleted_at: @user_cloud_user_association.deleted_at, is_cloud_admin: @user_cloud_user_association.is_cloud_admin, is_openstack_admin: @user_cloud_user_association.is_openstack_admin, role: @user_cloud_user_association.role, updated_at: @user_cloud_user_association.updated_at, user_id: @user_cloud_user_association.user_id }
    end

    assert_redirected_to user_cloud_user_association_path(assigns(:user_cloud_user_association))
  end

  test "should show user_cloud_user_association" do
    get :show, id: @user_cloud_user_association
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_cloud_user_association
    assert_response :success
  end

  test "should update user_cloud_user_association" do
    put :update, id: @user_cloud_user_association, user_cloud_user_association: { cloud_user_id: @user_cloud_user_association.cloud_user_id, created_at: @user_cloud_user_association.created_at, deleted: @user_cloud_user_association.deleted, deleted_at: @user_cloud_user_association.deleted_at, is_cloud_admin: @user_cloud_user_association.is_cloud_admin, is_openstack_admin: @user_cloud_user_association.is_openstack_admin, role: @user_cloud_user_association.role, updated_at: @user_cloud_user_association.updated_at, user_id: @user_cloud_user_association.user_id }
    assert_redirected_to user_cloud_user_association_path(assigns(:user_cloud_user_association))
  end

  test "should destroy user_cloud_user_association" do
    assert_difference('UserCloudUserAssociation.count', -1) do
      delete :destroy, id: @user_cloud_user_association
    end

    assert_redirected_to user_cloud_user_associations_path
  end
end
