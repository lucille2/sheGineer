require 'test_helper'

class SheroTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "testing full name" do
    shero = Shero.new({
    	first_name: 'first',
    	last_name: 'last'
    })

    assert_not_equal 'firstlast', shero.full_name
    assert_equal 'first last', shero.full_name
  end
end
