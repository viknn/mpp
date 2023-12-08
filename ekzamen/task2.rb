# frozen_string_literal: true

puts('Block:')
[1, 2, 3].each do |num|
  puts num
end
puts

puts('Proc:')
my_proc = Proc.new { |x| puts x * 2 }
my_proc.call(5)
puts

puts('Lambda:')
multiply = -> (x, y) { x * y }
puts multiply.call(3, 4)
