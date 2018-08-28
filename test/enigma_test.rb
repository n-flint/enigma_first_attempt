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

  def test_encrypt_method
    skip
    enigma = Enigma.new
    assert_equal "this is so secret ..end..", enigma.encrypt
  end

  def test_method_my_message
    skip
    enigma = Enigma.new
    my_message = "this is so secret ..end.."

    assert_equal "this is so secret ..end..", enigma.my_message
  end

  def test_final_rotation_a
    # skip
    enigma = Enigma.new
    refute_equal 0, enigma.final_rotation_a
  end

  def test_final_rotation_b
    # skip
    enigma = Enigma.new
    refute_equal 0, enigma.final_rotation_b
  end
end
