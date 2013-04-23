require 'test_helper'

class VolumeTypesControllerTest < ActionController::TestCase
  setup do
    @volume_type = volume_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:volume_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create volume_type" do
    assert_difference('VolumeType.count') do
      post :create, volume_type: { created_at: @volume_type.created_at, deleted: @volume_type.deleted, deleted_at: @volume_type.deleted_at, name: @volume_type.name, updated_at: @volume_type.updated_at }
    end

    assert_redirected_to volume_type_path(assigns(:volume_type))
  end

  test "should show volume_type" do
    get :show, id: @volume_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @volume_type
    assert_response :success
  end

  test "should update volume_type" do
    put :update, id: @volume_type, volume_type: { created_at: @volume_type.created_at, deleted: @volume_type.deleted, deleted_at: @volume_type.deleted_at, name: @volume_type.name, updated_at: @volume_type.updated_at }
    assert_redirected_to volume_type_path(assigns(:volume_type))
  end

  test "should destroy volume_type" do
    assert_difference('VolumeType.count', -1) do
      delete :destroy, id: @volume_type
    end

    assert_redirected_to volume_types_path
  end
end
