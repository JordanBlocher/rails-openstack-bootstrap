require 'test_helper'

class InstanceTypeExtraSpecsControllerTest < ActionController::TestCase
  setup do
    @instance_type_extra_spec = instance_type_extra_specs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instance_type_extra_specs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instance_type_extra_spec" do
    assert_difference('InstanceTypeExtraSpec.count') do
      post :create, instance_type_extra_spec: { created_at: @instance_type_extra_spec.created_at, deleted: @instance_type_extra_spec.deleted, deleted_at: @instance_type_extra_spec.deleted_at, instance_type_id: @instance_type_extra_spec.instance_type_id, key: @instance_type_extra_spec.key, updated_at: @instance_type_extra_spec.updated_at, value: @instance_type_extra_spec.value }
    end

    assert_redirected_to instance_type_extra_spec_path(assigns(:instance_type_extra_spec))
  end

  test "should show instance_type_extra_spec" do
    get :show, id: @instance_type_extra_spec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instance_type_extra_spec
    assert_response :success
  end

  test "should update instance_type_extra_spec" do
    put :update, id: @instance_type_extra_spec, instance_type_extra_spec: { created_at: @instance_type_extra_spec.created_at, deleted: @instance_type_extra_spec.deleted, deleted_at: @instance_type_extra_spec.deleted_at, instance_type_id: @instance_type_extra_spec.instance_type_id, key: @instance_type_extra_spec.key, updated_at: @instance_type_extra_spec.updated_at, value: @instance_type_extra_spec.value }
    assert_redirected_to instance_type_extra_spec_path(assigns(:instance_type_extra_spec))
  end

  test "should destroy instance_type_extra_spec" do
    assert_difference('InstanceTypeExtraSpec.count', -1) do
      delete :destroy, id: @instance_type_extra_spec
    end

    assert_redirected_to instance_type_extra_specs_path
  end
end
