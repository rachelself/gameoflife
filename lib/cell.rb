class Cell

  attr_accessor :x
  attr_accessor :y

  def initialize(x, y)
    @x = x
    @y = y

  end

  def neighbor?(x,y)
    return true ? (self.x - x).abs == 1 || (self.y - y).abs == 1 : false
  end



end
