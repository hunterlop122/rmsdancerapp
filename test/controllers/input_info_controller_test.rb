require 'test_helper'

class InputInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get instapage" do
    get input_info_instapage_url
    assert_response :success
  end

end
