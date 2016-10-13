require 'test_helper'

class ArchitecturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @architecture = architectures(:one)
  end

  test "should get index" do
    get architectures_url
    assert_response :success
  end

  test "should get new" do
    get new_architecture_url
    assert_response :success
  end

  test "should create architecture" do
    assert_difference('Architecture.count') do
      post architectures_url, params: { architecture: { description: @architecture.description, form_id: @architecture.form_id, text: @architecture.text } }
    end

    assert_redirected_to architecture_url(Architecture.last)
  end

  test "should show architecture" do
    get architecture_url(@architecture)
    assert_response :success
  end

  test "should get edit" do
    get edit_architecture_url(@architecture)
    assert_response :success
  end

  test "should update architecture" do
    patch architecture_url(@architecture), params: { architecture: { description: @architecture.description, form_id: @architecture.form_id, text: @architecture.text } }
    assert_redirected_to architecture_url(@architecture)
  end

  test "should destroy architecture" do
    assert_difference('Architecture.count', -1) do
      delete architecture_url(@architecture)
    end

    assert_redirected_to architectures_url
  end
end
