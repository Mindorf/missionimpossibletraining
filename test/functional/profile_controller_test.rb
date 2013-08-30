require 'test_helper'

class ProfileControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get workouts" do
    get :workouts
    assert_response :success
  end

  test "should get goals" do
    get :goals
    assert_response :success
  end

end
