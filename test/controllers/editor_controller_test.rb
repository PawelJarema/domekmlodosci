require 'test_helper'

class EditorControllerTest < ActionController::TestCase
  test "should get informacje" do
    get :informacje
    assert_response :success
  end

  test "should get cennik" do
    get :cennik
    assert_response :success
  end

  test "should get dojazd" do
    get :dojazd
    assert_response :success
  end

end
