require 'test_helper'

class CellTest < MiniTest::Unit::TestCase

  # def setup
  #   # This is ran before all the tests. Useful
  #   # when preparing input data for the objects/methods you
  #   # wish to test.
  #
  #   @cell = Cell.new
  # end

  def test_create_cell
    @cell = Cell.new(0, 1)

    assert_respond_to @cell, :x
    assert_respond_to @cell, :y
    assert_equal 0, @cell.x
    assert_equal 1, @cell.y
  end

  def test_cell_neighbor
    cell = Cell.new(0,0)

    assert_equal true, cell.neighbor?(1,0)
  end

  def test_cell_is_not_neighbor
    cell = Cell.new(0,0)

    assert_equal false, cell.neighbor?(2,3)
  end



end
