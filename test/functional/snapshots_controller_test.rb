require 'test_helper'

class SnapshotsControllerTest < ActionController::TestCase
  setup do
    @snapshot = snapshots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:snapshots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create snapshot" do
    assert_difference('Snapshot.count') do
      post :create, snapshot: { created_at: @snapshot.created_at, deleted: @snapshot.deleted, deleted_at: @snapshot.deleted_at, display_description: @snapshot.display_description, display_name: @snapshot.display_name, progress: @snapshot.progress, project_id: @snapshot.project_id, scheduled_at: @snapshot.scheduled_at, status: @snapshot.status, updated_at: @snapshot.updated_at, user_id: @snapshot.user_id, volume_id: @snapshot.volume_id, volume_size: @snapshot.volume_size }
    end

    assert_redirected_to snapshot_path(assigns(:snapshot))
  end

  test "should show snapshot" do
    get :show, id: @snapshot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @snapshot
    assert_response :success
  end

  test "should update snapshot" do
    put :update, id: @snapshot, snapshot: { created_at: @snapshot.created_at, deleted: @snapshot.deleted, deleted_at: @snapshot.deleted_at, display_description: @snapshot.display_description, display_name: @snapshot.display_name, progress: @snapshot.progress, project_id: @snapshot.project_id, scheduled_at: @snapshot.scheduled_at, status: @snapshot.status, updated_at: @snapshot.updated_at, user_id: @snapshot.user_id, volume_id: @snapshot.volume_id, volume_size: @snapshot.volume_size }
    assert_redirected_to snapshot_path(assigns(:snapshot))
  end

  test "should destroy snapshot" do
    assert_difference('Snapshot.count', -1) do
      delete :destroy, id: @snapshot
    end

    assert_redirected_to snapshots_path
  end
end
