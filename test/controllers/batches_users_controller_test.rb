require "test_helper"

class BatchesUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get batches_users_create_url
    assert_response :success
  end
end
