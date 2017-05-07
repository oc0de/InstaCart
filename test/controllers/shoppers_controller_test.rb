require 'test_helper'

class ShoppersControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get shoppers_home_url
    assert_response :success
  end

end
