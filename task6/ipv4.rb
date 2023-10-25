# frozen_string_literal: true

def valid_ipv4?(address)
  numbers = address.split('.')
  return false unless numbers.length == 4

  numbers.all? do |number|
    next false unless number.match?(/^\d+$/) && !number.match?(/^0\d+/)

    value = number.to_i
    value >= 0 && value <= 255
  end
end

def check_argv
  if ARGV.length == 1
    ARGV[0]
  else
    puts 'Type "ruby ipv4.rb <IPv4_address>"'
    exit(1)
  end
end

address = check_argv
puts(valid_ipv4?(address))
