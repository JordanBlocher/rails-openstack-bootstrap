require 'test_helper'

class VolumesControllerTest < ActionController::TestCase
  setup do
    @volume = volumes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:volumes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create volume" do
    assert_difference('Volume.count') do
      post :create, volume: { attach_status: @volume.attach_status, attach_time: @volume.attach_time, availability_zone: @volume.availability_zone, created_at: @volume.created_at, deleted: @volume.deleted, deleted_at: @volume.deleted_at, display_description: @volume.display_description, display_name: @volume.display_name, ec2_id: @volume.ec2_id, host: @volume.host, instance_id: @volume.instance_id, launched_at: @volume.launched_at, mountpoint: @volume.mountpoint, project_id: @volume.project_id, provider_auth: @volume.provider_auth, provider_location: @volume.provider_location, scheduled_at: @volume.scheduled_at, size: @volume.size, snapshot_id: @volume.snapshot_id, status: @volume.status, terminated_at: @volume.terminated_at, updated_at: @volume.updated_at, user_id: @volume.user_id, volume_type_id: @volume.volume_type_id }
    end

    assert_redirected_to volume_path(assigns(:volume))
  end

  test "should show volume" do
    get :show, id: @volume
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @volume
    assert_response :success
  end

  test "should update volume" do
    put :update, id: @volume, volume: { attach_status: @volume.attach_status, attach_time: @volume.attach_time, availability_zone: @volume.availability_zone, created_at: @volume.created_at, deleted: @volume.deleted, deleted_at: @volume.deleted_at, display_description: @volume.display_description, display_name: @volume.display_name, ec2_id: @volume.ec2_id, host: @volume.host, instance_id: @volume.instance_id, launched_at: @volume.launched_at, mountpoint: @volume.mountpoint, project_id: @volume.project_id, provider_auth: @volume.provider_auth, provider_location: @volume.provider_location, scheduled_at: @volume.scheduled_at, size: @volume.size, snapshot_id: @volume.snapshot_id, status: @volume.status, terminated_at: @volume.terminated_at, updated_at: @volume.updated_at, user_id: @volume.user_id, volume_type_id: @volume.volume_type_id }
    assert_redirected_to volume_path(assigns(:volume))
  end

  test "should destroy volume" do
    assert_difference('Volume.count', -1) do
      delete :destroy, id: @volume
    end

    assert_redirected_to volumes_path
  end
end
