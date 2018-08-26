class Triangle
  def kind(side1,side2,side3)
    if
      :equilateral if side1 == side2 == side3
    else
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
    #decide if the triangle is equilateral, isosceles, or scalene
    #raise an error if there is an error
  end

  class TriangleError < StandardError
    def message
      "This is not a valid triangle!"
    end
  end
end
