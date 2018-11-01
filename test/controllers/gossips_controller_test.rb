require 'test_helper'

class GossipsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get gossips_home_url
    assert_response :success
  end

end
