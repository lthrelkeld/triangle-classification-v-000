class Triangle
  def kind(side1,side2,side3)
    greater_than_zero == true if side1 > 0 && side2 > 0 && side3 > 0
    side1_sum == true if side1 < side2 + side3
    side2_sum == true if side2 < side1 + side3
    side3_sum == true if side3 < side1 + side2

    if greater_than_zero == true && side1_sum == true && side2_sum == true && side3_sum == true
      :equilateral if side1 == side2 && side1 == side3
      :isosceles if side1 == side2 || side1 == side3 || side2 == side3
      :scalene if not :isosceles or :equilateral
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
