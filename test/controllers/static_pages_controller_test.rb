require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get info" do
    get :info
    assert_response :success
  end

  test "should get prices" do
    get :prices
    assert_response :success
  end

  test "should get map" do
    get :map
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
