require 'minitest/autorun'
require 'minitest/pride'
require 'date'
require './lib/offset'

class OffsetTest < Minitest::Test
  def test_it_exists
    offset = Offset.new
    assert_instance_of Offset, offset
  end

  def test_current_date
    offset = Offset.new
    assert_equal 260818, offset.current_date

  end


end
