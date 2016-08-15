class Boat
  attr_accessor :lenght, :position, :start, :direction 
  
  def initialize(lenght: lenght, start: start, direction: direction)
    @lenght = lenght
    @start = start
    @direction = direction
  end 
end