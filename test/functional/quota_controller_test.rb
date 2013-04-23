require 'test_helper'

class QuotaControllerTest < ActionController::TestCase
  setup do
    @quotum = quota(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quota)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quotum" do
    assert_difference('Quotum.count') do
      post :create, quotum: { created_at: @quotum.created_at, deleted: @quotum.deleted, deleted_at: @quotum.deleted_at, hard_limit: @quotum.hard_limit, project_id: @quotum.project_id, resource: @quotum.resource, updated_at: @quotum.updated_at }
    end

    assert_redirected_to quotum_path(assigns(:quotum))
  end

  test "should show quotum" do
    get :show, id: @quotum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quotum
    assert_response :success
  end

  test "should update quotum" do
    put :update, id: @quotum, quotum: { created_at: @quotum.created_at, deleted: @quotum.deleted, deleted_at: @quotum.deleted_at, hard_limit: @quotum.hard_limit, project_id: @quotum.project_id, resource: @quotum.resource, updated_at: @quotum.updated_at }
    assert_redirected_to quotum_path(assigns(:quotum))
  end

  test "should destroy quotum" do
    assert_difference('Quotum.count', -1) do
      delete :destroy, id: @quotum
    end

    assert_redirected_to quota_path
  end
end
