# frozen_string_literal: true

def to_abbreviation(words)
  abbreviations = []
  words.each do |word|
    abbreviation = ''
    word.split.each do |w|
      abbreviation += w[0].upcase
    end
    abbreviations << abbreviation
  end
  abbreviations.join
end

puts 'Enter a list of words:'
input_words = gets.chomp
words = input_words.split
abbreviation = to_abbreviation(words)
puts "Abbreviation: #{abbreviation}"
