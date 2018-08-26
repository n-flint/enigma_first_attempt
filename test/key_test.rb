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

  def test_show_key_array
    key = Key.new
# binding.pry
    assert_equal ["9", "7", "5", "2", "8"], key.num
  end

end
