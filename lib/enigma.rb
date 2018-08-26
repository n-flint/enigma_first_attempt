require 'pry'

class Enigma
  attr_reader :array,
              :my_message,
              :current_date
  def intialize
    @array = ["a", "b", "c", "d", "e",
              "f", "g", "h", "i", "j",
              "k", "l", "m", "n", "o",
              "p", "q", "r", "s", "t",
              "u", "v", "w", "x", "y",
              "z", "0", "1", "2", "3",
              "4", "5", "6", "7", "8",
              "9", " ", ".", ","]
    @my_message   = my_message
    @current_date = Time.now.strftime("%d%m%y")
  end
  binding.pry

  def time
    @current_date.last ^ 2
    #want to take integers from current_date
    #square root and use last 4 digits in array
  end

  def encrypt

  end
end

# e = Enigma.new
