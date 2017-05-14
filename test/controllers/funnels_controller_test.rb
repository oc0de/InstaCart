require 'test_helper'

class FunnelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get funnels_index_url
    assert_response :success
  end

end
