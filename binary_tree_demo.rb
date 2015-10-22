require_relative "grid.rb"
require_relative "binary_tree.rb"
require_relative "cell.rb"

grid = Grid.new(6,6)
BinaryTree.on(grid)

puts grid
