require 'test_helper'

class FavouritesControllerTest < ActionController::TestCase

  # Add more helper methods to be used by all tests here...
  include Devise::TestHelpers

  def setup
    @subject = subjects(:rails)
    @resource = resources(:hartl)
    @user = users(:userone)
  end

  test 'should add new favourite subject' do
    sign_in @user
    assert_difference('Favourite.count') do
      post :add, subject_id: @subject
    end
    assert_equal "Added #{@subject.name} to favourites on user page.", flash[:success]
    assert_redirected_to subject_path(@subject)
  end

  test 'should add new favourite resource' do
    sign_in @user
    assert_difference('Favourite.count') do
      post :add, subject_id: @subject, resource_id: @resource
    end
    assert_equal "Added #{@resource.title} to favourites on user page.", flash[:success]
    assert_redirected_to subject_path(@subject)
  end

  test 'should remove favourite subject' do
    sign_in @user
    assert_difference('Favourite.count', -1) do
      delete :remove, subject_id: @subject
    end
    assert_equal "Removed #{@subject.name} from favourites.", flash[:success]
    assert_redirected_to subject_path(@subject)
  end

  test 'should remove favourite resource' do
    sign_in @user
    assert_difference('Favourite.count', -1) do
      delete :remove, subject_id: @subject, resource_id: @resource
    end
    assert_equal "Removed #{@resource.title} from favourites.", flash[:success]
    assert_redirected_to subject_path(@subject)
  end

end
