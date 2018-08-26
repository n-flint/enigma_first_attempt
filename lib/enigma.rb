require 'pry'

class Enigma
  attr_reader :array,
              :my_message,
              :current_date
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
  binding.pry



  def encrypt

  end
end

# e = Enigma.new
