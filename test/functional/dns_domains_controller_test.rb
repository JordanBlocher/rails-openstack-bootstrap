require 'test_helper'

class DnsDomainsControllerTest < ActionController::TestCase
  setup do
    @dns_domain = dns_domains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dns_domains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dns_domain" do
    assert_difference('DnsDomain.count') do
      post :create, dns_domain: { availability_zone: @dns_domain.availability_zone, created_at: @dns_domain.created_at, deleted: @dns_domain.deleted, deleted_at: @dns_domain.deleted_at, domain: @dns_domain.domain, project_id: @dns_domain.project_id, scope: @dns_domain.scope, updated_at: @dns_domain.updated_at }
    end

    assert_redirected_to dns_domain_path(assigns(:dns_domain))
  end

  test "should show dns_domain" do
    get :show, id: @dns_domain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dns_domain
    assert_response :success
  end

  test "should update dns_domain" do
    put :update, id: @dns_domain, dns_domain: { availability_zone: @dns_domain.availability_zone, created_at: @dns_domain.created_at, deleted: @dns_domain.deleted, deleted_at: @dns_domain.deleted_at, domain: @dns_domain.domain, project_id: @dns_domain.project_id, scope: @dns_domain.scope, updated_at: @dns_domain.updated_at }
    assert_redirected_to dns_domain_path(assigns(:dns_domain))
  end

  test "should destroy dns_domain" do
    assert_difference('DnsDomain.count', -1) do
      delete :destroy, id: @dns_domain
    end

    assert_redirected_to dns_domains_path
  end
end
