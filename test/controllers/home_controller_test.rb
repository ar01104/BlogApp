require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
include Devise::Test::IntegrationHelpers

  setup do
    @user = users(:one)
    sign_in @user
  end

  test 'should get homepage' do
    get home_url
    assert_template partial: '_navbar', count: 1
    assert_template partial: '_footer', count: 1
    assert_response :success
  end

  test 'should get contact' do
    get contact_url
    assert_response:success
    assert_template layout: 'layouts/application'
    assert_template partial: '_navbar', count: 1
    assert_template partial: '_footer', count: 1
    assert_select'h1', 'Contact Page'
    assert_select'p', 'hola!
  is there a problem?'
  end

  test "should post request contact but no email" do
    post request_contact_url
    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post request_contact_url, params:
    {email: "anis@me.com",name: "Anis Rouba", subject: "Greetings", enquieries: "Hello"}
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end

end
