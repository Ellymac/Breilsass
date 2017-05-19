require 'test_helper'

class NewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get news_new_url
    assert_response :success
  end

end
