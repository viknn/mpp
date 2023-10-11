# frozen_string_literal: true

class RomanConverter
  ROMAN_TO_INT = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }.freeze

  INT_TO_ROMAN = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }.freeze

  def self.roman_to_int(roman_num)
    total = 0
    prev_value = 0

    roman_num.reverse.each_char do |char|
      value = ROMAN_TO_INT[char]
      if value >= prev_value
        total += value
      else
        total -= value
      end
      prev_value = value
    end

    total
  end

  def self.int_to_roman(int_num)
    roman_numeral = ''
    INT_TO_ROMAN.each do |value, letter|
      while int_num >= value
        roman_numeral += letter
        int_num -= value
      end
    end
    roman_numeral
  end
end

def user_input
  puts 'Enter a Roman numeral or an integer (1 <= number < 4000):'
  input = gets.chomp.strip

  if input.match?(/^\d+$/)
    integer_value = input.to_i

    if integer_value >= 1 && integer_value < 4000
      roman_numeral = RomanConverter.int_to_roman(integer_value)
      puts "#{input} in Roman numeral is: #{roman_numeral}"
    else
      puts 'Invalid input. Integer value should be in range 1 <= number < 4000'
    end
  elsif input.match?(/^[IVXLCDM]+$/i)
    integer_value = RomanConverter.roman_to_int(input.upcase)

    if integer_value >= 1 && integer_value < 4000
      puts "#{input} in integer is: #{integer_value}"
    else
      puts 'Invalid input. Roman numeral value should be in range 1 <= number < 4000'
    end
  else
    puts 'Invalid input. Enter a valid Roman numeral or integer'
  end
end

user_input
