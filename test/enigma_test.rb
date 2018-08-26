require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require 'date'

class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma

  end

  def test_method_feedback
    skip
    enigma = Enigma.new
    assert_equal "this is so secret ..end..",
     enigma.my_message
  end

  
end
