require 'test_helper'

class WelcomePageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get welcome_page_home_url
    assert_response :success
  end

end
