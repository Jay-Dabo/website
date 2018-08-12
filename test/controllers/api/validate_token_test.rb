require_relative './test_base'

class API::PingControllerTest < API::TestBase
  test "setup should return 401 with incorrect token" do
    get api_validate_token_path, as: :json
    assert_response 401
  end

  test "latest should return 200 with correct token" do
    setup_user
    get api_validate_token_path, headers: @headers, as: :json
    assert_response 200
  end
end
