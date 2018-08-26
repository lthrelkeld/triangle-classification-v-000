class Triangle
  def kind
    #decide if the triangle is equilateral, isosceles, or scalene
    #raise an error if there is an error
  end

  class TriangleError < StandardError
    def message
      "This is not a valid triangle!"
    end
  end
end
