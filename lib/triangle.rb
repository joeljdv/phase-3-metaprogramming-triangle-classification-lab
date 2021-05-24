class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize(a, b ,c)
    @a = a 
    @b = b
    @c = c
  end

  def kind
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b && @b != @c || @a == @c && @c != @b || @b == @c && @c != @a
      :isosceles
    elsif @a != @b && @b != @c
      :scalene
    elsif @a = 0 && @b = 0 && @c == 0
      raise TriangleError
    end
  end

  class TriangleError < StandardError

    def message
      "You have an error"
    end

  end

end
