require 'test_helper'

class SmVolumesControllerTest < ActionController::TestCase
  setup do
    @sm_volume = sm_volumes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sm_volumes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sm_volume" do
    assert_difference('SmVolume.count') do
      post :create, sm_volume: { backend_id: @sm_volume.backend_id, created_at: @sm_volume.created_at, deleted: @sm_volume.deleted, deleted_at: @sm_volume.deleted_at, updated_at: @sm_volume.updated_at, vdi_uuid: @sm_volume.vdi_uuid }
    end

    assert_redirected_to sm_volume_path(assigns(:sm_volume))
  end

  test "should show sm_volume" do
    get :show, id: @sm_volume
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sm_volume
    assert_response :success
  end

  test "should update sm_volume" do
    put :update, id: @sm_volume, sm_volume: { backend_id: @sm_volume.backend_id, created_at: @sm_volume.created_at, deleted: @sm_volume.deleted, deleted_at: @sm_volume.deleted_at, updated_at: @sm_volume.updated_at, vdi_uuid: @sm_volume.vdi_uuid }
    assert_redirected_to sm_volume_path(assigns(:sm_volume))
  end

  test "should destroy sm_volume" do
    assert_difference('SmVolume.count', -1) do
      delete :destroy, id: @sm_volume
    end

    assert_redirected_to sm_volumes_path
  end
end
