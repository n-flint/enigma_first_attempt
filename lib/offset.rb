require 'date'

class Offset

attr_reader :current_date

def initialize

  @current_date = Time.now.strftime("%d%m%y").to_i

end


  def time
    @current_date.last ^ 2
    #want to take integers from current_date
    #square root and use last 4 digits in array
  end


end
