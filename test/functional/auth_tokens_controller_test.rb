require 'test_helper'

class AuthTokensControllerTest < ActionController::TestCase
  setup do
    @auth_token = auth_tokens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auth_tokens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auth_token" do
    assert_difference('AuthToken.count') do
      post :create, auth_token: { cdn_management_url: @auth_token.cdn_management_url, created_at: @auth_token.created_at, deleted: @auth_token.deleted, deleted_at: @auth_token.deleted_at, server_management_url: @auth_token.server_management_url, storage_url: @auth_token.storage_url, token_hash: @auth_token.token_hash, updated_at: @auth_token.updated_at, user_id: @auth_token.user_id }
    end

    assert_redirected_to auth_token_path(assigns(:auth_token))
  end

  test "should show auth_token" do
    get :show, id: @auth_token
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auth_token
    assert_response :success
  end

  test "should update auth_token" do
    put :update, id: @auth_token, auth_token: { cdn_management_url: @auth_token.cdn_management_url, created_at: @auth_token.created_at, deleted: @auth_token.deleted, deleted_at: @auth_token.deleted_at, server_management_url: @auth_token.server_management_url, storage_url: @auth_token.storage_url, token_hash: @auth_token.token_hash, updated_at: @auth_token.updated_at, user_id: @auth_token.user_id }
    assert_redirected_to auth_token_path(assigns(:auth_token))
  end

  test "should destroy auth_token" do
    assert_difference('AuthToken.count', -1) do
      delete :destroy, id: @auth_token
    end

    assert_redirected_to auth_tokens_path
  end
end
