require "test_helper"

class ExtraInfosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get extra_infos_index_url
    assert_response :success
  end

  test "should get show" do
    get extra_infos_show_url
    assert_response :success
  end
end
