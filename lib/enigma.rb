require 'pry'
require './lib/key'
require './lib/offset'

class Enigma
  attr_reader :array,
              :my_message,
              :final_rotation_a
  def initialize
    @array = ["a", "b", "c", "d", "e",
              "f", "g", "h", "i", "j",
              "k", "l", "m", "n", "o",
              "p", "q", "r", "s", "t",
              "u", "v", "w", "x", "y",
              "z", "0", "1", "2", "3",
              "4", "5", "6", "7", "8",
              "9", " ", ".", ","]
    @my_message   = my_message

  end



  def encrypt

  end

  def final_rotation_a
    final_rotation_a = a_rotation + rotation_a
    binding.pry
  end

end

# e = Enigma.new
