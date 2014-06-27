require 'test_helper'

class Admin::AccountsControllerTest < ActionController::TestCase
  test "should get Index" do
    get :Index
    assert_response :success
  end

  test "should get Create" do
    get :Create
    assert_response :success
  end

  test "should get List" do
    get :List
    assert_response :success
  end

  test "should get Settings" do
    get :Settings
    assert_response :success
  end

end
