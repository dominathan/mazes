require_relative "grid.rb"
require_relative "binary_tree.rb"
require_relative "cell.rb"

grid = Grid.new(20,20)
BinaryTree.on(grid)

puts grid
