require 'test_helper'

class BwUsageCachesControllerTest < ActionController::TestCase
  setup do
    @bw_usage_cach = bw_usage_caches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bw_usage_caches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bw_usage_cach" do
    assert_difference('BwUsageCache.count') do
      post :create, bw_usage_cach: { bw_in: @bw_usage_cach.bw_in, bw_out: @bw_usage_cach.bw_out, created_at: @bw_usage_cach.created_at, deleted: @bw_usage_cach.deleted, deleted_at: @bw_usage_cach.deleted_at, last_refreshed: @bw_usage_cach.last_refreshed, mac: @bw_usage_cach.mac, start_period: @bw_usage_cach.start_period, updated_at: @bw_usage_cach.updated_at }
    end

    assert_redirected_to bw_usage_cach_path(assigns(:bw_usage_cach))
  end

  test "should show bw_usage_cach" do
    get :show, id: @bw_usage_cach
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bw_usage_cach
    assert_response :success
  end

  test "should update bw_usage_cach" do
    put :update, id: @bw_usage_cach, bw_usage_cach: { bw_in: @bw_usage_cach.bw_in, bw_out: @bw_usage_cach.bw_out, created_at: @bw_usage_cach.created_at, deleted: @bw_usage_cach.deleted, deleted_at: @bw_usage_cach.deleted_at, last_refreshed: @bw_usage_cach.last_refreshed, mac: @bw_usage_cach.mac, start_period: @bw_usage_cach.start_period, updated_at: @bw_usage_cach.updated_at }
    assert_redirected_to bw_usage_cach_path(assigns(:bw_usage_cach))
  end

  test "should destroy bw_usage_cach" do
    assert_difference('BwUsageCache.count', -1) do
      delete :destroy, id: @bw_usage_cach
    end

    assert_redirected_to bw_usage_caches_path
  end
end
