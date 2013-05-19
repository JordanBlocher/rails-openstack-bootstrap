require 'test_helper'

class S3ImagesControllerTest < ActionController::TestCase
  setup do
    @s3_image = s3_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:s3_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create s3_image" do
    assert_difference('S3Image.count') do
      post :create, s3_image: { created_at: @s3_image.created_at, deleted: @s3_image.deleted, deleted_at: @s3_image.deleted_at, updated_at: @s3_image.updated_at, uuid: @s3_image.uuid }
    end

    assert_redirected_to s3_image_path(assigns(:s3_image))
  end

  test "should show s3_image" do
    get :show, id: @s3_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @s3_image
    assert_response :success
  end

  test "should update s3_image" do
    put :update, id: @s3_image, s3_image: { created_at: @s3_image.created_at, deleted: @s3_image.deleted, deleted_at: @s3_image.deleted_at, updated_at: @s3_image.updated_at, uuid: @s3_image.uuid }
    assert_redirected_to s3_image_path(assigns(:s3_image))
  end

  test "should destroy s3_image" do
    assert_difference('S3Image.count', -1) do
      delete :destroy, id: @s3_image
    end

    assert_redirected_to s3_images_path
  end
end
