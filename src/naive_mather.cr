require "./naive_mather/token"
require "./naive_mather/lexer"
require "./naive_mather/parser"

module NaiveMather
  def self.calculate(equation : String | Nil)
    return 0 if equation.nil?
    parser = NaiveMather::Parser.new
    parser.parse(equation.not_nil!)
  end
end
