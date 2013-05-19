require 'test_helper'

class ImagePropertiesControllerTest < ActionController::TestCase
  setup do
    @image_property = image_properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_property" do
    assert_difference('ImageProperty.count') do
      post :create, image_property: { created_at: @image_property.created_at, deleted: @image_property.deleted, deleted_at: @image_property.deleted_at, image_id: @image_property.image_id, name: @image_property.name, updated_at: @image_property.updated_at, value: @image_property.value }
    end

    assert_redirected_to image_property_path(assigns(:image_property))
  end

  test "should show image_property" do
    get :show, id: @image_property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_property
    assert_response :success
  end

  test "should update image_property" do
    put :update, id: @image_property, image_property: { created_at: @image_property.created_at, deleted: @image_property.deleted, deleted_at: @image_property.deleted_at, image_id: @image_property.image_id, name: @image_property.name, updated_at: @image_property.updated_at, value: @image_property.value }
    assert_redirected_to image_property_path(assigns(:image_property))
  end

  test "should destroy image_property" do
    assert_difference('ImageProperty.count', -1) do
      delete :destroy, id: @image_property
    end

    assert_redirected_to image_properties_path
  end
end
