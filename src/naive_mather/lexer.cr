require "./token"

module NaiveMather
  class Lexer
    @previous_token : Token | Nil
    @input : String | Nil

    def initialize(input : String)
      @input = input
      @return_previous_token = false
    end

    def get_next_token : Token | Nil
      if @return_previous_token
        @return_previous_token = false
        return @previous_token
      end

      token = Token.new

      if @input
        @input = @input.not_nil!.lstrip

        case @input
        when /\A\+/
          token.kind = Token::Plus
        when /\A-/
          token.kind = Token::Minus
        when /\A\*/
          token.kind = Token::Multiply
        when /\A\//
          token.kind = Token::Divide
        when /\A\d+(\.\d+)?/
          token.kind = Token::Number
          token.value = $~[0].to_i32
        when /\A\(/
          token.kind = Token::LParen
        when /\A\)/
          token.kind = Token::RParen
        when ""
          token.kind = Token::End
        end

        if token.unknown?
          raise Exception.new("Unknown token")
        end

        begin
          match_data = $~
          @input = match_data.post_match
        rescue e
          @input = nil
        end
      end

      @previous_token = token
      token
    end

    def revert
      @return_previous_token = true
    end
  end
end
