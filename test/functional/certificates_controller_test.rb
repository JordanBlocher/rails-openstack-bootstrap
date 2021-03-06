require 'test_helper'

class CertificatesControllerTest < ActionController::TestCase
  setup do
    @certificate = certificates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certificates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certificate" do
    assert_difference('Certificate.count') do
      post :create, certificate: { created_at: @certificate.created_at, deleted: @certificate.deleted, deleted_at: @certificate.deleted_at, file_name: @certificate.file_name, project_id: @certificate.project_id, updated_at: @certificate.updated_at, user_id: @certificate.user_id }
    end

    assert_redirected_to certificate_path(assigns(:certificate))
  end

  test "should show certificate" do
    get :show, id: @certificate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certificate
    assert_response :success
  end

  test "should update certificate" do
    put :update, id: @certificate, certificate: { created_at: @certificate.created_at, deleted: @certificate.deleted, deleted_at: @certificate.deleted_at, file_name: @certificate.file_name, project_id: @certificate.project_id, updated_at: @certificate.updated_at, user_id: @certificate.user_id }
    assert_redirected_to certificate_path(assigns(:certificate))
  end

  test "should destroy certificate" do
    assert_difference('Certificate.count', -1) do
      delete :destroy, id: @certificate
    end

    assert_redirected_to certificates_path
  end
end
