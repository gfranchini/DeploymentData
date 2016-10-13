require 'test_helper'

class DeploymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deployment = deployments(:one)
  end

  test "should get index" do
    get deployments_url
    assert_response :success
  end

  test "should get new" do
    get new_deployment_url
    assert_response :success
  end

  test "should create deployment" do
    assert_difference('Deployment.count') do
      post deployments_url, params: { deployment: { additional_software: @deployment.additional_software, app_stack: @deployment.app_stack, form_id: @deployment.form_id, installation: @deployment.installation, repo_url: @deployment.repo_url } }
    end

    assert_redirected_to deployment_url(Deployment.last)
  end

  test "should show deployment" do
    get deployment_url(@deployment)
    assert_response :success
  end

  test "should get edit" do
    get edit_deployment_url(@deployment)
    assert_response :success
  end

  test "should update deployment" do
    patch deployment_url(@deployment), params: { deployment: { additional_software: @deployment.additional_software, app_stack: @deployment.app_stack, form_id: @deployment.form_id, installation: @deployment.installation, repo_url: @deployment.repo_url } }
    assert_redirected_to deployment_url(@deployment)
  end

  test "should destroy deployment" do
    assert_difference('Deployment.count', -1) do
      delete deployment_url(@deployment)
    end

    assert_redirected_to deployments_url
  end
end
