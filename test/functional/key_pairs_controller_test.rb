require 'test_helper'

class KeyPairsControllerTest < ActionController::TestCase
  setup do
    @key_pair = key_pairs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:key_pairs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create key_pair" do
    assert_difference('KeyPair.count') do
      post :create, key_pair: { created_at: @key_pair.created_at, deleted: @key_pair.deleted, deleted_at: @key_pair.deleted_at, fingerprint: @key_pair.fingerprint, name: @key_pair.name, public_key: @key_pair.public_key, updated_at: @key_pair.updated_at, user_id: @key_pair.user_id }
    end

    assert_redirected_to key_pair_path(assigns(:key_pair))
  end

  test "should show key_pair" do
    get :show, id: @key_pair
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @key_pair
    assert_response :success
  end

  test "should update key_pair" do
    put :update, id: @key_pair, key_pair: { created_at: @key_pair.created_at, deleted: @key_pair.deleted, deleted_at: @key_pair.deleted_at, fingerprint: @key_pair.fingerprint, name: @key_pair.name, public_key: @key_pair.public_key, updated_at: @key_pair.updated_at, user_id: @key_pair.user_id }
    assert_redirected_to key_pair_path(assigns(:key_pair))
  end

  test "should destroy key_pair" do
    assert_difference('KeyPair.count', -1) do
      delete :destroy, id: @key_pair
    end

    assert_redirected_to key_pairs_path
  end
end
