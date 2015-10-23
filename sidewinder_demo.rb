require 'grid'
require 'sidewinder'

grid = Grid.new(40,40)
Sidewinder.on(grid)

img = grid.to_png
img.save "my-maze.png"
