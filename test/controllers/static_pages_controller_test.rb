require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get FILL_IN
    assert_response FILL_IN
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end
    
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end
end
