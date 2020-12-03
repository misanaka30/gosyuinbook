require 'test_helper'

class GosyuinsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gosyuins_index_url
    assert_response :success
  end

end
