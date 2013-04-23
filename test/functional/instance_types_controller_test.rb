require 'test_helper'

class InstanceTypesControllerTest < ActionController::TestCase
  setup do
    @instance_type = instance_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instance_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instance_type" do
    assert_difference('InstanceType.count') do
      post :create, instance_type: { created_at: @instance_type.created_at, deleted: @instance_type.deleted, deleted_at: @instance_type.deleted_at, ephemeral_gb: @instance_type.ephemeral_gb, flavorid: @instance_type.flavorid, memory_mb: @instance_type.memory_mb, name: @instance_type.name, root_gb: @instance_type.root_gb, rxtx_factor: @instance_type.rxtx_factor, swap: @instance_type.swap, updated_at: @instance_type.updated_at, vcpu_weight: @instance_type.vcpu_weight, vcpus: @instance_type.vcpus }
    end

    assert_redirected_to instance_type_path(assigns(:instance_type))
  end

  test "should show instance_type" do
    get :show, id: @instance_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instance_type
    assert_response :success
  end

  test "should update instance_type" do
    put :update, id: @instance_type, instance_type: { created_at: @instance_type.created_at, deleted: @instance_type.deleted, deleted_at: @instance_type.deleted_at, ephemeral_gb: @instance_type.ephemeral_gb, flavorid: @instance_type.flavorid, memory_mb: @instance_type.memory_mb, name: @instance_type.name, root_gb: @instance_type.root_gb, rxtx_factor: @instance_type.rxtx_factor, swap: @instance_type.swap, updated_at: @instance_type.updated_at, vcpu_weight: @instance_type.vcpu_weight, vcpus: @instance_type.vcpus }
    assert_redirected_to instance_type_path(assigns(:instance_type))
  end

  test "should destroy instance_type" do
    assert_difference('InstanceType.count', -1) do
      delete :destroy, id: @instance_type
    end

    assert_redirected_to instance_types_path
  end
end
