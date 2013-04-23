require 'test_helper'

class SecurityGroupRulesControllerTest < ActionController::TestCase
  setup do
    @security_group_rule = security_group_rules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:security_group_rules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create security_group_rule" do
    assert_difference('SecurityGroupRule.count') do
      post :create, security_group_rule: { cidr: @security_group_rule.cidr, created_at: @security_group_rule.created_at, deleted: @security_group_rule.deleted, deleted_at: @security_group_rule.deleted_at, from_port: @security_group_rule.from_port, group_id: @security_group_rule.group_id, parent_group_id: @security_group_rule.parent_group_id, protocol: @security_group_rule.protocol, to_port: @security_group_rule.to_port, updated_at: @security_group_rule.updated_at }
    end

    assert_redirected_to security_group_rule_path(assigns(:security_group_rule))
  end

  test "should show security_group_rule" do
    get :show, id: @security_group_rule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @security_group_rule
    assert_response :success
  end

  test "should update security_group_rule" do
    put :update, id: @security_group_rule, security_group_rule: { cidr: @security_group_rule.cidr, created_at: @security_group_rule.created_at, deleted: @security_group_rule.deleted, deleted_at: @security_group_rule.deleted_at, from_port: @security_group_rule.from_port, group_id: @security_group_rule.group_id, parent_group_id: @security_group_rule.parent_group_id, protocol: @security_group_rule.protocol, to_port: @security_group_rule.to_port, updated_at: @security_group_rule.updated_at }
    assert_redirected_to security_group_rule_path(assigns(:security_group_rule))
  end

  test "should destroy security_group_rule" do
    assert_difference('SecurityGroupRule.count', -1) do
      delete :destroy, id: @security_group_rule
    end

    assert_redirected_to security_group_rules_path
  end
end
