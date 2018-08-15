class Triangle

  attr_accessor :a, :b, :c
  def initialize(a, b,c)
    @a = a
    @b = b
    @c = c

end


def kind
  good_triangle
  if a == b && b == c
    :equilateral
  elsif a == b || b == c || c == a
    :isosceles
  else
    :scalene

end
end
def good_triangle
  actual_triangle = [(a + b > c), (a + c > b), (b + c > a)]
  [a,b,c].each {|side| actual_triangle << false if side <= 0}
  raise TriangleError if actual_triangle.include?(false)

end
class TriangleError < StandardError
end
end
