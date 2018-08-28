require 'pry'
require './lib/key'
require './lib/offset'

class Enigma
  attr_reader :array,
              :my_message,
              :key_rotation,
              :offset_rotation

  def initialize
    @array = ["a", "b", "c", "d", "e",
              "f", "g", "h", "i", "j",
              "k", "l", "m", "n", "o",
              "p", "q", "r", "s", "t",
              "u", "v", "w", "x", "y",
              "z", "0", "1", "2", "3",
              "4", "5", "6", "7", "8",
              "9", " ", ".", ","]
    @my_message       = my_message
    @key_rotation     = Key.new
    @offset_rotation  = Offset.new
  end

  def encrypt
    # new_message = []
    # new_message = @my_message.chars
    #
  end

  def new_array(my_message)
    new_array = []
    my_message.each_slice(4) do |slice|
    new_array << slice
    end
  end
  binding.pry

  def final_rotation_a
    @key_rotation.a_rotation + @offset_rotation.rotation_a
  end

  def final_rotation_b
    @key_rotation.b_rotation + @offset_rotation.rotation_b
  end

  def final_rotation_c
    @key_rotation.c_rotation + @offset_rotation.rotation_c
  end

  def final_rotation_d
    @key_rotation.d_rotation + @offset_rotation.rotation_d
  end

end

# binding.pry
# e = Enigma.new
