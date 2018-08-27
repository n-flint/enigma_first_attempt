require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'
require 'date'
require 'pry'

class KeyTest < Minitest::Test
  def test_it_exists
    key = Key.new

    assert_instance_of Key, key
  end

  def test_number_in_key
    key = Key.new
    assert_equal 5, key.num.length
  end



end
