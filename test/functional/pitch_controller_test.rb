require 'test_helper'

class PitchControllerTest < ActionController::TestCase
  test "should get record" do
    get :record
    assert_response :success
  end

  test "should get preview" do
    get :preview
    assert_response :success
  end

  test "should get save" do
    get :save
    assert_response :success
  end

  test "should get submit" do
    get :submit
    assert_response :success
  end

end
