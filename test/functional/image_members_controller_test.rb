require 'test_helper'

class ImageMembersControllerTest < ActionController::TestCase
  setup do
    @image_member = image_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_member" do
    assert_difference('ImageMember.count') do
      post :create, image_member: { can_share: @image_member.can_share, created_at: @image_member.created_at, deleted: @image_member.deleted, deleted_at: @image_member.deleted_at, image_id: @image_member.image_id, member: @image_member.member, updated_at: @image_member.updated_at }
    end

    assert_redirected_to image_member_path(assigns(:image_member))
  end

  test "should show image_member" do
    get :show, id: @image_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_member
    assert_response :success
  end

  test "should update image_member" do
    put :update, id: @image_member, image_member: { can_share: @image_member.can_share, created_at: @image_member.created_at, deleted: @image_member.deleted, deleted_at: @image_member.deleted_at, image_id: @image_member.image_id, member: @image_member.member, updated_at: @image_member.updated_at }
    assert_redirected_to image_member_path(assigns(:image_member))
  end

  test "should destroy image_member" do
    assert_difference('ImageMember.count', -1) do
      delete :destroy, id: @image_member
    end

    assert_redirected_to image_members_path
  end
end
