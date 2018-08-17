
class Triangle
  # triangle code
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def ordered_sides
    ordered_sides = [ ]
    ordered_sides << self.side1 << self.side2 << self.side3
    ordered_sides.sort
  end

  def kind
    if self.side1 <= 0 || self.side2 <= 0 || self.side3 <= 0
      raise TriangleError
    elsif (self.ordered_sides[0] + self.ordered_sides[1]) <= self.ordered_sides[2]
      raise TriangleError
    else
      if self.side1 == self.side2 && self.side2 == self.side3
        :equilateral
      elsif self.side1 == self.side2 || self.side2 == self.side3 || self.side1==self.side3
        :isosceles
      else
        :scalene
      end
    end



  end

  class TriangleError < StandardError
    # triangle error code
  end
end
