require 'pry'
require './lib/key'
require './lib/offset'

class Enigma
  attr_reader :array,
              :key_rotation,
              :offset_rotation,
              :new_array

  def initialize
    @array = ["a", "b", "c", "d", "e",
              "f", "g", "h", "i", "j",
              "k", "l", "m", "n", "o",
              "p", "q", "r", "s", "t",
              "u", "v", "w", "x", "y",
              "z", "0", "1", "2", "3",
              "4", "5", "6", "7", "8",
              "9", " ", ".", ","]
    @key_rotation     = Key.new
    @offset_rotation  = Offset.new
    @new_array        = []
  end
  #if <= 38
  #puts value
  #else
  #puts absolute value (index - (max #38 + rotation) +1

  def encrypt(my_message = "this is so secret ..end..")
    # new_message = []
    # new_message = my_message.chars
    # i = 0
    # #integer position
    # size = my_message.length
    # new_encrypted_array = []
    # while i <= size do
    #     #first character
    #     @array.find_index(new_message[i]) + final_rotation_a > @array.length
    #     new_encrypted_array[i] = @array[(@array.find_index(new_message[i]) - (size + final_rotation_a) + 1).abs]
    #     : new_encrypted_array[i] = @array[@array.find_index(new_message[i]) + final_rotation_a]
    #
    #     #second character
    #   if @array.find_index(new_message[i]) + final_rotation_b > @array.length
    #     new_encrypted_array[i+1] = @array[(@array.find_index(new_message[i+1]) - (size + final_rotation_b) + 1).abs]
    #   else
    #     new_encrypted_array[i+1] = @array[@array.find_index(new_message[i+1]) + final_rotation_b]
    #   end
    #     #third character
    #   if @array.find_index(new_message[i]) + final_rotation_c > @array.length
    #     new_encrypted_array[i+2] = @array[(@array.find_index(new_message[i+2]) - (size + final_rotation_c) + 1).abs]
    #   else
    #     new_encrypted_array[i+2] = @array[@array.find_index(new_message[i+2]) + final_rotation_c]
    #   end
    #     #fourth character
    #   if @array.find_index(new_message[i]) + final_rotation_d > @array.length
    #     new_encrypted_array[i+3] = @array[(@array.find_index(new_message[i+3]) - (size + final_rotation_d) + 1).abs]
    #   else
    #     new_encrypted_array[i+3] = @array[@array.find_index(new_message[i+3]) + final_rotation_d]
    #   end
    #     #keep going past the 4th character, next loop iteration will be index 5
    #     i+=4
    # end
  end

  def new_array(my_message)
    @new_array = []
    my_message.each_slice(4) do |slice|
    new_array << slice
    end
  end

  def translate
    @new_array.zip(@array(final_rotation_a)).to_h[0]
    @new_array.zip(@array(final_rotation_b)).to_h[1]
    @new_array.zip(@array(final_rotation_c)).to_h[2]
    @new_array.zip(@array(final_rotation_d)).to_h[3]
  end

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
binding.pry
