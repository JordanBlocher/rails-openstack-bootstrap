require 'test_helper'

class InstanceMetadataControllerTest < ActionController::TestCase
  setup do
    @instance_metadatum = instance_metadata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instance_metadata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instance_metadatum" do
    assert_difference('InstanceMetadatum.count') do
      post :create, instance_metadatum: { created_at: @instance_metadatum.created_at, deleted: @instance_metadatum.deleted, deleted_at: @instance_metadatum.deleted_at, instance_id: @instance_metadatum.instance_id, key: @instance_metadatum.key, updated_at: @instance_metadatum.updated_at, value: @instance_metadatum.value }
    end

    assert_redirected_to instance_metadatum_path(assigns(:instance_metadatum))
  end

  test "should show instance_metadatum" do
    get :show, id: @instance_metadatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instance_metadatum
    assert_response :success
  end

  test "should update instance_metadatum" do
    put :update, id: @instance_metadatum, instance_metadatum: { created_at: @instance_metadatum.created_at, deleted: @instance_metadatum.deleted, deleted_at: @instance_metadatum.deleted_at, instance_id: @instance_metadatum.instance_id, key: @instance_metadatum.key, updated_at: @instance_metadatum.updated_at, value: @instance_metadatum.value }
    assert_redirected_to instance_metadatum_path(assigns(:instance_metadatum))
  end

  test "should destroy instance_metadatum" do
    assert_difference('InstanceMetadatum.count', -1) do
      delete :destroy, id: @instance_metadatum
    end

    assert_redirected_to instance_metadata_path
  end
end
