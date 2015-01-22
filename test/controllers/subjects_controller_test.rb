require 'test_helper'

class SubjectsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @one = subjects(:one)
  end

  test('should get new') do
    get :new
    assert_response :success
    assert_select 'title', 'New Subject | Educate Me'
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_select 'title', 'Subjects | Educate Me'
  end

  test "should get subject page" do
    get :show, id: @one
    assert_response :success
    assert_select 'title', "#{@one.name} | Educate Me"
  end

end
