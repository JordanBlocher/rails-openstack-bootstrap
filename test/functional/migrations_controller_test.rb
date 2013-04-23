require 'test_helper'

class MigrationsControllerTest < ActionController::TestCase
  setup do
    @migration = migrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:migrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create migration" do
    assert_difference('Migration.count') do
      post :create, migration: { created_at: @migration.created_at, deleted: @migration.deleted, deleted_at: @migration.deleted_at, dest_compute: @migration.dest_compute, dest_host: @migration.dest_host, instance_uuid: @migration.instance_uuid, new_instance_type_id: @migration.new_instance_type_id, old_instance_type_id: @migration.old_instance_type_id, source_compute: @migration.source_compute, status: @migration.status, updated_at: @migration.updated_at }
    end

    assert_redirected_to migration_path(assigns(:migration))
  end

  test "should show migration" do
    get :show, id: @migration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @migration
    assert_response :success
  end

  test "should update migration" do
    put :update, id: @migration, migration: { created_at: @migration.created_at, deleted: @migration.deleted, deleted_at: @migration.deleted_at, dest_compute: @migration.dest_compute, dest_host: @migration.dest_host, instance_uuid: @migration.instance_uuid, new_instance_type_id: @migration.new_instance_type_id, old_instance_type_id: @migration.old_instance_type_id, source_compute: @migration.source_compute, status: @migration.status, updated_at: @migration.updated_at }
    assert_redirected_to migration_path(assigns(:migration))
  end

  test "should destroy migration" do
    assert_difference('Migration.count', -1) do
      delete :destroy, id: @migration
    end

    assert_redirected_to migrations_path
  end
end
