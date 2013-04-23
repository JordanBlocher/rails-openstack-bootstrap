require 'test_helper'

class SmBackendConfigsControllerTest < ActionController::TestCase
  setup do
    @sm_backend_config = sm_backend_configs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sm_backend_configs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sm_backend_config" do
    assert_difference('SmBackendConfig.count') do
      post :create, sm_backend_config: { config_params: @sm_backend_config.config_params, created_at: @sm_backend_config.created_at, deleted: @sm_backend_config.deleted, deleted_at: @sm_backend_config.deleted_at, flavor_id: @sm_backend_config.flavor_id, sr_type: @sm_backend_config.sr_type, sr_uuid: @sm_backend_config.sr_uuid, updated_at: @sm_backend_config.updated_at }
    end

    assert_redirected_to sm_backend_config_path(assigns(:sm_backend_config))
  end

  test "should show sm_backend_config" do
    get :show, id: @sm_backend_config
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sm_backend_config
    assert_response :success
  end

  test "should update sm_backend_config" do
    put :update, id: @sm_backend_config, sm_backend_config: { config_params: @sm_backend_config.config_params, created_at: @sm_backend_config.created_at, deleted: @sm_backend_config.deleted, deleted_at: @sm_backend_config.deleted_at, flavor_id: @sm_backend_config.flavor_id, sr_type: @sm_backend_config.sr_type, sr_uuid: @sm_backend_config.sr_uuid, updated_at: @sm_backend_config.updated_at }
    assert_redirected_to sm_backend_config_path(assigns(:sm_backend_config))
  end

  test "should destroy sm_backend_config" do
    assert_difference('SmBackendConfig.count', -1) do
      delete :destroy, id: @sm_backend_config
    end

    assert_redirected_to sm_backend_configs_path
  end
end
