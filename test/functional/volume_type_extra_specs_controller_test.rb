require 'test_helper'

class VolumeTypeExtraSpecsControllerTest < ActionController::TestCase
  setup do
    @volume_type_extra_spec = volume_type_extra_specs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:volume_type_extra_specs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create volume_type_extra_spec" do
    assert_difference('VolumeTypeExtraSpec.count') do
      post :create, volume_type_extra_spec: { created_at: @volume_type_extra_spec.created_at, deleted: @volume_type_extra_spec.deleted, deleted_at: @volume_type_extra_spec.deleted_at, key: @volume_type_extra_spec.key, updated_at: @volume_type_extra_spec.updated_at, value: @volume_type_extra_spec.value, volume_type_id: @volume_type_extra_spec.volume_type_id }
    end

    assert_redirected_to volume_type_extra_spec_path(assigns(:volume_type_extra_spec))
  end

  test "should show volume_type_extra_spec" do
    get :show, id: @volume_type_extra_spec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @volume_type_extra_spec
    assert_response :success
  end

  test "should update volume_type_extra_spec" do
    put :update, id: @volume_type_extra_spec, volume_type_extra_spec: { created_at: @volume_type_extra_spec.created_at, deleted: @volume_type_extra_spec.deleted, deleted_at: @volume_type_extra_spec.deleted_at, key: @volume_type_extra_spec.key, updated_at: @volume_type_extra_spec.updated_at, value: @volume_type_extra_spec.value, volume_type_id: @volume_type_extra_spec.volume_type_id }
    assert_redirected_to volume_type_extra_spec_path(assigns(:volume_type_extra_spec))
  end

  test "should destroy volume_type_extra_spec" do
    assert_difference('VolumeTypeExtraSpec.count', -1) do
      delete :destroy, id: @volume_type_extra_spec
    end

    assert_redirected_to volume_type_extra_specs_path
  end
end
