require 'test_helper'

class AggregatesControllerTest < ActionController::TestCase
  setup do
    @aggregate = aggregates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aggregates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aggregate" do
    assert_difference('Aggregate.count') do
      post :create, aggregate: { availability_zone: @aggregate.availability_zone, created_at: @aggregate.created_at, deleted: @aggregate.deleted, deleted_at: @aggregate.deleted_at, name: @aggregate.name, operational_state: @aggregate.operational_state, updated_at: @aggregate.updated_at }
    end

    assert_redirected_to aggregate_path(assigns(:aggregate))
  end

  test "should show aggregate" do
    get :show, id: @aggregate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aggregate
    assert_response :success
  end

  test "should update aggregate" do
    put :update, id: @aggregate, aggregate: { availability_zone: @aggregate.availability_zone, created_at: @aggregate.created_at, deleted: @aggregate.deleted, deleted_at: @aggregate.deleted_at, name: @aggregate.name, operational_state: @aggregate.operational_state, updated_at: @aggregate.updated_at }
    assert_redirected_to aggregate_path(assigns(:aggregate))
  end

  test "should destroy aggregate" do
    assert_difference('Aggregate.count', -1) do
      delete :destroy, id: @aggregate
    end

    assert_redirected_to aggregates_path
  end
end
