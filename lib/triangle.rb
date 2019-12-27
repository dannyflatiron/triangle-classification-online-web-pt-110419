require 'pry'
class Triangle

attr_accessor :side_1, :side_2, :side_3

    def initialize(side_1, side_2, side_3)
      @side_1 = side_1
      @side_2 = side_2
      @side_3 = side_3
    end

    def kind
      # should raise a custom error
      # how do I raise a customer error?
      # what makes a triangle equal on all sides?
      if @side_3 == @side_2 && @side_3 == @side_1
        :equilateral
      elsif
       @side_2 == @side_3 && @side_3 != @side_1 || @side_1 == @side_3 && @side_3 != @side_2 || @side_1 == @side_2 && @side_2 != @side_3
      #  binding.pry
        :isosceles
      elsif
        binding.pry

        @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_1 && @side_2 != @side_3
        :scalene
      elsif
        @side_1 == 0 && @side_2 == 0 && @side_3 == 0
        raise TriangleError
      end

    end

    class TriangleError < StandardError

    end
end
