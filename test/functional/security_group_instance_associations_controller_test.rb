require 'test_helper'

class SecurityGroupInstanceAssociationsControllerTest < ActionController::TestCase
  setup do
    @security_group_instance_association = security_group_instance_associations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:security_group_instance_associations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create security_group_instance_association" do
    assert_difference('SecurityGroupInstanceAssociation.count') do
      post :create, security_group_instance_association: { created_at: @security_group_instance_association.created_at, deleted: @security_group_instance_association.deleted, deleted_at: @security_group_instance_association.deleted_at, instance_id: @security_group_instance_association.instance_id, security_group_id: @security_group_instance_association.security_group_id, updated_at: @security_group_instance_association.updated_at }
    end

    assert_redirected_to security_group_instance_association_path(assigns(:security_group_instance_association))
  end

  test "should show security_group_instance_association" do
    get :show, id: @security_group_instance_association
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @security_group_instance_association
    assert_response :success
  end

  test "should update security_group_instance_association" do
    put :update, id: @security_group_instance_association, security_group_instance_association: { created_at: @security_group_instance_association.created_at, deleted: @security_group_instance_association.deleted, deleted_at: @security_group_instance_association.deleted_at, instance_id: @security_group_instance_association.instance_id, security_group_id: @security_group_instance_association.security_group_id, updated_at: @security_group_instance_association.updated_at }
    assert_redirected_to security_group_instance_association_path(assigns(:security_group_instance_association))
  end

  test "should destroy security_group_instance_association" do
    assert_difference('SecurityGroupInstanceAssociation.count', -1) do
      delete :destroy, id: @security_group_instance_association
    end

    assert_redirected_to security_group_instance_associations_path
  end
end
