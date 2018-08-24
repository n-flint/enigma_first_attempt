require 'pry'
require 'date'

class Enigma

  attr_reader :array
  attr_reader :my_message

  def intialize (my_message = "this is so secret ..end..")
    @my_message = my_message
    @array = ["a", "b", "c", "d", "e",
          "f", "g", "h", "i", "j",
          "k", "l", "m", "n", "o",
           "p", "q", "r", "s", "t",
         "u", "v", "w", "x", "y", "z",
         "0", "1", "2", "3", "4", "5",
         "6", "7", "8", "9", ",", ".", " "]
       end
#binding.pry



  def encrypt

  end



end

e = Enigma.new

#binding.pry
