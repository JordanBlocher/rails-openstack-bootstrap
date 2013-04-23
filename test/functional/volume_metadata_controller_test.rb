require 'test_helper'

class VolumeMetadataControllerTest < ActionController::TestCase
  setup do
    @volume_metadatum = volume_metadata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:volume_metadata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create volume_metadatum" do
    assert_difference('VolumeMetadatum.count') do
      post :create, volume_metadatum: { created_at: @volume_metadatum.created_at, deleted: @volume_metadatum.deleted, deleted_at: @volume_metadatum.deleted_at, key: @volume_metadatum.key, updated_at: @volume_metadatum.updated_at, value: @volume_metadatum.value, volume_id: @volume_metadatum.volume_id }
    end

    assert_redirected_to volume_metadatum_path(assigns(:volume_metadatum))
  end

  test "should show volume_metadatum" do
    get :show, id: @volume_metadatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @volume_metadatum
    assert_response :success
  end

  test "should update volume_metadatum" do
    put :update, id: @volume_metadatum, volume_metadatum: { created_at: @volume_metadatum.created_at, deleted: @volume_metadatum.deleted, deleted_at: @volume_metadatum.deleted_at, key: @volume_metadatum.key, updated_at: @volume_metadatum.updated_at, value: @volume_metadatum.value, volume_id: @volume_metadatum.volume_id }
    assert_redirected_to volume_metadatum_path(assigns(:volume_metadatum))
  end

  test "should destroy volume_metadatum" do
    assert_difference('VolumeMetadatum.count', -1) do
      delete :destroy, id: @volume_metadatum
    end

    assert_redirected_to volume_metadata_path
  end
end
