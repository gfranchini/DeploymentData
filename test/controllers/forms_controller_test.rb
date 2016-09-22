require 'test_helper'

class FormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @form = forms(:one)
  end

  test "should get index" do
    get forms_url
    assert_response :success
  end

  test "should get new" do
    get new_form_url
    assert_response :success
  end

  test "should create form" do
    assert_difference('Form.count') do
      post forms_url, params: { form: { project_description: @form.project_description, application_name: @form.application_name, server_accessibility: @form.server_accessibility, server_environment: @form.server_environment, server_location: @form.server_location, server_purpose: @form.server_purpose } }
    end

    assert_redirected_to form_url(Form.last)
  end

  test "should show form" do
    get form_url(@form)
    assert_response :success
  end

  test "should get edit" do
    get edit_form_url(@form)
    assert_response :success
  end

  test "should update form" do
    patch form_url(@form), params: { form: { project_description: @form.project_description, application_name: @form.application_name, server_accessibility: @form.server_accessibility, server_environment: @form.server_environment, server_location: @form.server_location, server_purpose: @form.server_purpose } }
    assert_redirected_to form_url(@form)
  end

  test "should destroy form" do
    assert_difference('Form.count', -1) do
      delete form_url(@form)
    end

    assert_redirected_to forms_url
  end
end
