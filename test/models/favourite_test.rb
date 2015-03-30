require 'test_helper'

class FavouriteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @subject = subjects(:rails)
    @subjectfalse = subjects(:angular)
    @user = users(:userone)
    @resource = resources(:hartl)
    @resourcefalse = resources(:codecademy)
  end

  test 'subject_favourited method' do
    assert Favourite.subject_favourited?(@subject, @user)
  end

  test 'subject_favourited method false' do
    assert_not Favourite.subject_favourited?(@subjectfalse, @user)
  end

  test 'resource_favourited method' do
    assert Favourite.resource_favourited?(@resource, @user)
  end

  test 'resource_favourited method false' do
    assert_not Favourite.resource_favourited?(@resourcefalse, @user)
  end

end