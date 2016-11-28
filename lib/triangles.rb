class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangles) do
    if (@side1 + @side2 <= @side3) || (@side1 + @side3 <= @side2) || (@side2 + @side3 <= @side1)
      false
    else
      if (@side1 == @side2) && (@side2 == @side3) && (@side3 == @side1)
        true
      elsif (@side1 == @side2) || (@side2 == @side3) || (@side1 == @side3)
        true
      elsif (@side1 != @side2) || (@side2 != @side3) || (@side1 != @side3)
        true
      end
    end
  end
end
