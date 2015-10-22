require_relative "grid.rb"
require_relative "binary_tree.rb"
require_relative "cell.rb"
class BinaryTree

  def self.on(grid)
    grid.each_cell do |cell|
      neighbors = []
      if cell.north
        neighbors.push(cell.north)
      end
      if cell.east
        neighbors.push(cell.east)
      end

      index = rand(neighbors.length)
      neighbor = neighbors[index]

      cell.link(neighbor) if neighbor
    end

    grid
  end
end

