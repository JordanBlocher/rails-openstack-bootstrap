require 'test_helper'

class VirtualInterfaceCloudUserAssociationsControllerTest < ActionController::TestCase
  setup do
    @virtual_interface_cloud_user_association = virtual_interface_cloud_user_associations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:virtual_interface_cloud_user_associations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create virtual_interface_cloud_user_association" do
    assert_difference('VirtualInterfaceCloudUserAssociation.count') do
      post :create, virtual_interface_cloud_user_association: { created_at: @virtual_interface_cloud_user_association.created_at, deleted_at: @virtual_interface_cloud_user_association.deleted_at, shared_ip: @virtual_interface_cloud_user_association.shared_ip }
    end

    assert_redirected_to virtual_interface_cloud_user_association_path(assigns(:virtual_interface_cloud_user_association))
  end

  test "should show virtual_interface_cloud_user_association" do
    get :show, id: @virtual_interface_cloud_user_association
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @virtual_interface_cloud_user_association
    assert_response :success
  end

  test "should update virtual_interface_cloud_user_association" do
    put :update, id: @virtual_interface_cloud_user_association, virtual_interface_cloud_user_association: { created_at: @virtual_interface_cloud_user_association.created_at, deleted_at: @virtual_interface_cloud_user_association.deleted_at, shared_ip: @virtual_interface_cloud_user_association.shared_ip }
    assert_redirected_to virtual_interface_cloud_user_association_path(assigns(:virtual_interface_cloud_user_association))
  end

  test "should destroy virtual_interface_cloud_user_association" do
    assert_difference('VirtualInterfaceCloudUserAssociation.count', -1) do
      delete :destroy, id: @virtual_interface_cloud_user_association
    end

    assert_redirected_to virtual_interface_cloud_user_associations_path
  end
end
