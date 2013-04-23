require 'test_helper'

class ProviderFwRulesControllerTest < ActionController::TestCase
  setup do
    @provider_fw_rule = provider_fw_rules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provider_fw_rules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create provider_fw_rule" do
    assert_difference('ProviderFwRule.count') do
      post :create, provider_fw_rule: { cidr: @provider_fw_rule.cidr, created_at: @provider_fw_rule.created_at, deleted: @provider_fw_rule.deleted, deleted_at: @provider_fw_rule.deleted_at, from_port: @provider_fw_rule.from_port, protocol: @provider_fw_rule.protocol, to_port: @provider_fw_rule.to_port, updated_at: @provider_fw_rule.updated_at }
    end

    assert_redirected_to provider_fw_rule_path(assigns(:provider_fw_rule))
  end

  test "should show provider_fw_rule" do
    get :show, id: @provider_fw_rule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @provider_fw_rule
    assert_response :success
  end

  test "should update provider_fw_rule" do
    put :update, id: @provider_fw_rule, provider_fw_rule: { cidr: @provider_fw_rule.cidr, created_at: @provider_fw_rule.created_at, deleted: @provider_fw_rule.deleted, deleted_at: @provider_fw_rule.deleted_at, from_port: @provider_fw_rule.from_port, protocol: @provider_fw_rule.protocol, to_port: @provider_fw_rule.to_port, updated_at: @provider_fw_rule.updated_at }
    assert_redirected_to provider_fw_rule_path(assigns(:provider_fw_rule))
  end

  test "should destroy provider_fw_rule" do
    assert_difference('ProviderFwRule.count', -1) do
      delete :destroy, id: @provider_fw_rule
    end

    assert_redirected_to provider_fw_rules_path
  end
end
