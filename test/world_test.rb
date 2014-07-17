require 'test_helper'

class WorldTest < MiniTest::Unit::TestCase

  def setup
    # This is ran before all the tests. Useful
    # when preparing input data for the objects/methods you
    # wish to test.
    @world = World.new
  end

  def test_world_start
    assert_equal 0, @world.time
    assert_equal [], @world.live_cells
  end

  def test_world_ticks
    @world.tick
    assert_equal 1, @world.time
  end

  def test_world_adds_new_cell
    @world.add_cell(1,1)
    assert_equal [[1,1]], @world.live_cells
  end

  def test_world_adds_multiple_cells
    @world.add_cell(1,2)
    @world.add_cell(1,3)
    assert_equal [[1,2], [1,3]], @world.live_cells
  end

  def test_world_removes_cell
    @world.add_cell(1,4)
    @world.remove_cell(1,4)
    assert_equal [], @world.live_cells
  end

  def test_live_neighbors_array
    cell = @world.add_cell(5,1)
    @world.add_cell(4,0)
    @world.add_cell(4,1)
    @world.add_cell(4,2)

    assert_equal 4, @world.live_cells.size
    assert_equal [[4,0], [4,1], [4,2]], cell.get_neighbors
  end

end
