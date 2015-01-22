require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "Home | Educate Me"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | Educate Me"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | Educate Me"
  end
end
