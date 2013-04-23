require 'test_helper'

class SmFlavorsControllerTest < ActionController::TestCase
  setup do
    @sm_flavor = sm_flavors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sm_flavors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sm_flavor" do
    assert_difference('SmFlavor.count') do
      post :create, sm_flavor: { created_at: @sm_flavor.created_at, deleted: @sm_flavor.deleted, deleted_at: @sm_flavor.deleted_at, description: @sm_flavor.description, label: @sm_flavor.label, updated_at: @sm_flavor.updated_at }
    end

    assert_redirected_to sm_flavor_path(assigns(:sm_flavor))
  end

  test "should show sm_flavor" do
    get :show, id: @sm_flavor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sm_flavor
    assert_response :success
  end

  test "should update sm_flavor" do
    put :update, id: @sm_flavor, sm_flavor: { created_at: @sm_flavor.created_at, deleted: @sm_flavor.deleted, deleted_at: @sm_flavor.deleted_at, description: @sm_flavor.description, label: @sm_flavor.label, updated_at: @sm_flavor.updated_at }
    assert_redirected_to sm_flavor_path(assigns(:sm_flavor))
  end

  test "should destroy sm_flavor" do
    assert_difference('SmFlavor.count', -1) do
      delete :destroy, id: @sm_flavor
    end

    assert_redirected_to sm_flavors_path
  end
end
