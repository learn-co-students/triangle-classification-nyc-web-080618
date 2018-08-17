class Triangle
  attr_accessor :l1,:l2,:l3

  def initialize(l1,l2,l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    array = [@l1,@l2,@l3].sort
    if array[0]+array[1] <= array[2]
      raise TriangleError
    elsif array[1]+array[2] <= array[0]
      raise TriangleError
    elsif @l1 <= 0 || @l2 <= 0 || @l3 <= 0
      raise TriangleError
    end
    if @l1 == @l2 && @l2 == @l3
      :equilateral
    elsif array[1] == array[2]
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
