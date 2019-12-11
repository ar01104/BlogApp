require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
include Devise::Test::ControllerHelpers

  test "should get homepage" do
    sign_in User.create("anisrouba@gmail.com", "qwerty")
    get home_homepage_path
    assert_response :success
  end

  test "should get contact" do
    sign_in User.create("anisrouba@gmail.com", "qwerty")
    get contact_path
    assert_response:success
    assert_template home: 'contact'
    assert_select'h1', 'Contact Page'
    assert_select'p', users.username , ' ! is there a problem?'
  end

end
