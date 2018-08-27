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
    todays_date = Time.now.strftime("%d%m%y").to_i
    assert_equal todays_date, offset.current_date

  end
  def test_it_has_time
  offset = Offset.new
  assert_equal "9124", offset.last4
  end


  def test_rotation_a
    offset = Offset.new
    assert_equal 9, offset.rotation_a
  end

  def test_rotation_b
    offset = Offset.new
    assert_equal 1, offset.rotation_b
  end

  def test_rotation_c
    offset = Offset.new
    assert_equal 2, offset.rotation_c
  end

  def test_rotation_d
    offset = Offset.new
    assert_equal 4, offset.rotation_d
  end

end
