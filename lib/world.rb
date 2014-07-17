class World

  attr_accessor :live_cells
  attr_accessor :time

  def initialize
    @time = 0
    @live_cells = []
  end

  def tick
    @time += 1
  end

  def add_cell(x,y)
    cell = Cell.new(x,y)
    @live_cells << [cell.x, cell.y]
  end

  def remove_cell(x,y)
    puts "live_cells is: #{@live_cells}"
    0.upto(@live_cells.size - 1) do |i|

      cell = @live_cells[i]
      puts "cell is: #{cell}"
      if cell[0] == x
        if cell[1] == y
          @live_cells.delete_at(i)
        end
      end
    end
  end

  def get_neighbors
    
  end



end
