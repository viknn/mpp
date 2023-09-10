# frozen_string_literal: true

options = ['stone', 'paper', 'scissors']

win_conditions = {
  'stone' => 'scissors',
  'paper' => 'stone',
  'scissors' => 'paper'
}

if (ARGV.length != 2) ||
   !options.include?(ARGV[0].downcase) ||
   !options.include?(ARGV[1].downcase)
  puts 'Pick two options between Stone / Paper / Scissors'
  exit
else
  user_choice = ARGV[0].downcase
  computer_choice = ARGV[1].downcase
end

if user_choice == computer_choice
  puts 'It\'s a tie'
elsif win_conditions[user_choice] == computer_choice
  puts 'You win'
else
  puts 'You lose'
end
