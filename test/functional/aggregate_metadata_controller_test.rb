require 'test_helper'

class AggregateMetadataControllerTest < ActionController::TestCase
  setup do
    @aggregate_metadatum = aggregate_metadata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aggregate_metadata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aggregate_metadatum" do
    assert_difference('AggregateMetadatum.count') do
      post :create, aggregate_metadatum: { aggregate_id: @aggregate_metadatum.aggregate_id, created_at: @aggregate_metadatum.created_at, deleted: @aggregate_metadatum.deleted, deleted_at: @aggregate_metadatum.deleted_at, key: @aggregate_metadatum.key, updated_at: @aggregate_metadatum.updated_at, value: @aggregate_metadatum.value }
    end

    assert_redirected_to aggregate_metadatum_path(assigns(:aggregate_metadatum))
  end

  test "should show aggregate_metadatum" do
    get :show, id: @aggregate_metadatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aggregate_metadatum
    assert_response :success
  end

  test "should update aggregate_metadatum" do
    put :update, id: @aggregate_metadatum, aggregate_metadatum: { aggregate_id: @aggregate_metadatum.aggregate_id, created_at: @aggregate_metadatum.created_at, deleted: @aggregate_metadatum.deleted, deleted_at: @aggregate_metadatum.deleted_at, key: @aggregate_metadatum.key, updated_at: @aggregate_metadatum.updated_at, value: @aggregate_metadatum.value }
    assert_redirected_to aggregate_metadatum_path(assigns(:aggregate_metadatum))
  end

  test "should destroy aggregate_metadatum" do
    assert_difference('AggregateMetadatum.count', -1) do
      delete :destroy, id: @aggregate_metadatum
    end

    assert_redirected_to aggregate_metadata_path
  end
end
