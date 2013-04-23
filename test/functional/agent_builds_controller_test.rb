require 'test_helper'

class AgentBuildsControllerTest < ActionController::TestCase
  setup do
    @agent_build = agent_builds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agent_builds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agent_build" do
    assert_difference('AgentBuild.count') do
      post :create, agent_build: { architecture: @agent_build.architecture, created_at: @agent_build.created_at, deleted: @agent_build.deleted, deleted_at: @agent_build.deleted_at, hypervisor: @agent_build.hypervisor, md5hash: @agent_build.md5hash, os: @agent_build.os, updated_at: @agent_build.updated_at, url: @agent_build.url, version: @agent_build.version }
    end

    assert_redirected_to agent_build_path(assigns(:agent_build))
  end

  test "should show agent_build" do
    get :show, id: @agent_build
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agent_build
    assert_response :success
  end

  test "should update agent_build" do
    put :update, id: @agent_build, agent_build: { architecture: @agent_build.architecture, created_at: @agent_build.created_at, deleted: @agent_build.deleted, deleted_at: @agent_build.deleted_at, hypervisor: @agent_build.hypervisor, md5hash: @agent_build.md5hash, os: @agent_build.os, updated_at: @agent_build.updated_at, url: @agent_build.url, version: @agent_build.version }
    assert_redirected_to agent_build_path(assigns(:agent_build))
  end

  test "should destroy agent_build" do
    assert_difference('AgentBuild.count', -1) do
      delete :destroy, id: @agent_build
    end

    assert_redirected_to agent_builds_path
  end
end
