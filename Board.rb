class Board
  attr_accessor :player, :boats, :matrix

  def initialize
    @matrix  = build_matrix
    @boats_matrix  = build_matrix
  end

  def print
    puts @matrix.map(&:inspect)
  end

  def print_boats
    puts @boats_matrix.map(&:inspect)
  end

  def add_boat(boat)
    x = boat.start[0]
    y = boat.start[1]
    1.upto(boat.lenght) {|a|
      case boat.direction
      when :right
        @boats_matrix[x][y+a-1] = 0
      when :down
        @boats_matrix[x+a-1][y] = 0
      end
    }
  end

  def boats_matrix
    @boats_matrix
  end

  def attack position
    if @matrix[position[0]][position[1]] == "*"
      if @matrix[position[0]][position[1]] == 0
        @matrix[position[0]][position[1]] = "X" 
      end
    end
  end

  private

  def build_matrix
    temp_array = []
    9.times do
      temp_array << Array.new(9) {"*"}
    end  
    temp_array  
  end
end