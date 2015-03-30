require 'test_helper'

class SubjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @subject = subjects(:rails)
  end

  test 'Rails subject valid' do
    assert @subject.valid?
  end

end
