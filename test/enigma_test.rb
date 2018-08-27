require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/offset'
require './lib/key'
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

def test_final_rotation_a
    enigma = Enigma.new
    assert_equal 12, enigma.final_rotation_a


end







end
