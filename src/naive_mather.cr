require "./naive_mather/token"
require "./naive_mather/lexer"
require "./naive_mather/parser"

# Calculates simple math equations, like "2 + 3 * (2 + 4)"
# Based on Ruby code written for blog by
# Lukasz Wrobel.
# https://lukaszwrobel.pl/blog/math-parser-part-3-implementation/
module NaiveMather
  # Returns the result of calculating the passed equation.
  #
  # ```
  # NativeMather.calculate("2 + 3") # => 5
  # ```
  def self.calculate(equation : String | Nil)
    return 0 if equation.nil?
    parser = NaiveMather::Parser.new
    parser.parse(equation.not_nil!)
  end
end
