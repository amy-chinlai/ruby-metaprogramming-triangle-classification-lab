require 'pry'
class Triangle
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides = [@side_1, @side_2, @side_3]
  end

  def kind
    if valid?
      if @side_1 == @side_2 && @side_2 == @side_3
        :equilateral
      elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
        :isosceles
      elsif @side_1 != @side_2 && @side_2 != @side_3
        :scalene
      end
    else
      raise TriangleError
    end
  end

  def valid?
    @sides.all? {|side| side > 0} && @side_1 + @side_2 > @side_3 && @side_2 + @side_3 > @side_1 && @side_1 + @side_3 > @side_2
  end

  class TriangleError < StandardError
  end


end
