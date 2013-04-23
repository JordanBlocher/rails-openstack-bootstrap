require 'test_helper'

class MigrateVersionsControllerTest < ActionController::TestCase
  setup do
    @migrate_version = migrate_versions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:migrate_versions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create migrate_version" do
    assert_difference('MigrateVersion.count') do
      post :create, migrate_version: { repository_id: @migrate_version.repository_id, repository_path: @migrate_version.repository_path, version: @migrate_version.version }
    end

    assert_redirected_to migrate_version_path(assigns(:migrate_version))
  end

  test "should show migrate_version" do
    get :show, id: @migrate_version
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @migrate_version
    assert_response :success
  end

  test "should update migrate_version" do
    put :update, id: @migrate_version, migrate_version: { repository_id: @migrate_version.repository_id, repository_path: @migrate_version.repository_path, version: @migrate_version.version }
    assert_redirected_to migrate_version_path(assigns(:migrate_version))
  end

  test "should destroy migrate_version" do
    assert_difference('MigrateVersion.count', -1) do
      delete :destroy, id: @migrate_version
    end

    assert_redirected_to migrate_versions_path
  end
end
