require 'test_helper'

class RequestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get request_index_url
    assert_response :success
  end

  test "should get create" do
    get request_create_url
    assert_response :success
  end

  test "should get count" do
    get request_count_url
    assert_response :success
  end

end
