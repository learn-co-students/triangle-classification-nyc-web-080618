class Triangle
  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError
    end
    if ((@side1 + @side2) <= @side3) || ((@side2 + @side3) <= @side1) || ((@side3 + @side1) <= @side2)
      raise TriangleError
    end
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif (@side1 == @side2 && @side2 != @side3) || (@side2 == @side3 && @side3 != @side1) || (@side3 == @side1 && @side1 != @side2)
      :isosceles
    elsif @side1 != @side2 && @side2 != @side3
      :scalene
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError

  end
end
