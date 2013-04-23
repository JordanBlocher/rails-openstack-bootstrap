require 'test_helper'

class InstanceFaultsControllerTest < ActionController::TestCase
  setup do
    @instance_fault = instance_faults(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instance_faults)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instance_fault" do
    assert_difference('InstanceFault.count') do
      post :create, instance_fault: { code: @instance_fault.code, created_at: @instance_fault.created_at, deleted: @instance_fault.deleted, deleted_at: @instance_fault.deleted_at, details: @instance_fault.details, instance_uuid: @instance_fault.instance_uuid, message: @instance_fault.message, updated_at: @instance_fault.updated_at }
    end

    assert_redirected_to instance_fault_path(assigns(:instance_fault))
  end

  test "should show instance_fault" do
    get :show, id: @instance_fault
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instance_fault
    assert_response :success
  end

  test "should update instance_fault" do
    put :update, id: @instance_fault, instance_fault: { code: @instance_fault.code, created_at: @instance_fault.created_at, deleted: @instance_fault.deleted, deleted_at: @instance_fault.deleted_at, details: @instance_fault.details, instance_uuid: @instance_fault.instance_uuid, message: @instance_fault.message, updated_at: @instance_fault.updated_at }
    assert_redirected_to instance_fault_path(assigns(:instance_fault))
  end

  test "should destroy instance_fault" do
    assert_difference('InstanceFault.count', -1) do
      delete :destroy, id: @instance_fault
    end

    assert_redirected_to instance_faults_path
  end
end
