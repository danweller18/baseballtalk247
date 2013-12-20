require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get adult_bats" do
    get :adult_bats
    assert_response :success
  end

end
