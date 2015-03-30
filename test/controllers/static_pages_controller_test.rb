require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  # Add more helper methods to be used by all tests here...
  include Devise::TestHelpers

  def setup 
    @user = users(:userone)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_select 'title', 'Home | techether'
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select 'title', 'About | techether'
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select 'title', 'Contact | techether'
  end

  test 'should be login or logout button' do
    get :index
    assert_response :success
    assert_select '.loginout', 'Log In'
    sign_in @user
    get :index
    assert_response :success
    assert_select '.loginout', 'Log Out'
  end


end
