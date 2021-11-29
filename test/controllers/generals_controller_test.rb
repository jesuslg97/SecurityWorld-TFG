require "test_helper"

class GeneralsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get generals_index_url
    assert_response :success
  end

  test "should get show" do
    get generals_show_url
    assert_response :success
  end

  test "should get new" do
    get generals_new_url
    assert_response :success
  end

  test "should get edit" do
    get generals_edit_url
    assert_response :success
  end

  test "should get create" do
    get generals_create_url
    assert_response :success
  end

  test "should get update" do
    get generals_update_url
    assert_response :success
  end

  test "should get destroy" do
    get generals_destroy_url
    assert_response :success
  end
end
