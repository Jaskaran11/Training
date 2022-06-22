require "test_helper"

class SignInPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sign_in_page_index_url
    assert_response :success
  end
end
