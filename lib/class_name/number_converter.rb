module ClassName
  module NumberConverter
    class << self
      # @return [String] Converts the integer to the human word (up to 16 for our grids. Feel free to extend support)
      def to_word integer
        case integer
        when 0
          "zero"
        when 1
          "one"
        when 2
          "two"
        when 3
          "three"
        when 4
          "four"
        when 5
          "five"
        when 6
          "six"
        when 7
          "seven"
        when 8
          "eight"
        when 9
          "nine"
        when 10
          "ten"
        when 11
          "eleven"
        when 12
          "twelve"
        when 13
          "thirteen"
        when 14
          "fourteen"
        when 15
          "fifteen"
        when 16
          "sixteen"
        else
          integer
        end
      end
    end
  end
end
