require 'test_helper'

class FirewallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @firewall = firewalls(:one)
  end

  test "should get index" do
    get firewalls_url
    assert_response :success
  end

  test "should get new" do
    get new_firewall_url
    assert_response :success
  end

  test "should create firewall" do
    assert_difference('Firewall.count') do
      post firewalls_url, params: { firewall: { details: @firewall.details, form_id: @firewall.form_id, form_id: @firewall.form_id } }
    end

    assert_redirected_to firewall_url(Firewall.last)
  end

  test "should show firewall" do
    get firewall_url(@firewall)
    assert_response :success
  end

  test "should get edit" do
    get edit_firewall_url(@firewall)
    assert_response :success
  end

  test "should update firewall" do
    patch firewall_url(@firewall), params: { firewall: { details: @firewall.details, form_id: @firewall.form_id, form_id: @firewall.form_id } }
    assert_redirected_to firewall_url(@firewall)
  end

  test "should destroy firewall" do
    assert_difference('Firewall.count', -1) do
      delete firewall_url(@firewall)
    end

    assert_redirected_to firewalls_url
  end
end
