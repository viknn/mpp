# frozen_string_literal: true

def precedence(operator)
  precedence_values = { '+' => 1, '-' => 1, '*' => 2, '/' => 2 }
  precedence_values[operator] || 0
end

def to_rpn(expression)
  output = []
  operators = []

  expression.each do |char|
    case char
    when /\d+/
      output << char
    when %r{[+\-*/]}
      output << operators.pop while !operators.empty? && precedence(operators.last) >= precedence(char)
      operators << char
    when '('
      operators << char
    when ')'
      output << operators.pop while operators.last != '('
      operators.pop
    end
  end

  output << operators.pop until operators.empty?

  output
end

puts 'Input:'
input_expression = gets.chomp

characters = input_expression.scan(%r{\d+|[+\-*/]|\(|\)})

rpn_expression = to_rpn(characters)
puts "Output:\n#{rpn_expression.join(' ')}"
