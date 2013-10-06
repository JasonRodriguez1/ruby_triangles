class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def valid_triangle?
    @side1 < @side2 + @side3 && @side2 < @side1 + @side3 && @side3 < @side1 + @side2
  end
  def equilateral?
    @side1 == @side2 && @side2 == @side3 && @side3 == @side1 && @side3 == @side2
  end
  def isosceles?
    @side1 == @side2 || @side1 == @side3 || @side2 == @side3
  end
  def scalene?
    @side1 != @side2 && @side1 != @side3 && @side2 != @side3
  end     
end  

triangle = Triangle.new(4,8,4)
puts triangle.valid_triangle?  