require 'test_helper'

class SubjectsControllerTest < ActionController::TestCase
  # Add more helper methods to be used by all tests here...
  include Devise::TestHelpers

  def setup
    @one = subjects(:rails)
  end

  test('should get new') do
    get :new
    assert_response :success
    assert_select 'title', 'New Subject | techether'
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_select 'title', 'Subjects | techether'
  end

  test "should get subject page" do
    get :show, id: @one
    assert_response :success
    assert_select 'title', "#{@one.name} | techether"
  end

end
