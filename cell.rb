class Cell
  attr_reader :row, :columnn
  attr_writer :north, :east, :south, :west

  def initialize(row,column)
    @row, @column = row, column
    @links = {}
  end

  def link(cell, bidi=true)
    @link[cell] = true
    cell.link(self, false) if bidi
    self
  end

  def unlink(cell, bidi=true)
    @link.delete(cell)
    cell.unlink(self,false) if bidi
    self
  end

  def links
    @links.keys
  end

  def linked?(cell)
    @links.key?(cell)
  end

  def neighbors
    list = []
    list << north if north
    list << south if south
    list << east if east
    list << west if west
    list
  end
end

