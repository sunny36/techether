require 'test_helper'

class SubjectsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @subject = subjects(:one)
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_select "title", "New Subject | Educate Me"
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "Subjects | Educate Me"
  end

  test "should get subject page" do
    get :show, id: @subject
    assert_response :success
    assert_select "title", "#{@subject.name} | Educate Me"
  end

end
