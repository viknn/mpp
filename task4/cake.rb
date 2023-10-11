# frozen_string_literal: true

def raisins?(cake)
  unless cake.flatten.include?('o')
    puts 'The cake has no raisins'
    exit
  end
end

def cut_cake(cake)
  new_cake = []

  cake.each do |row|
    raisin_indices = row.each_index.select { |i| row[i] == 'o' }

    if raisin_indices.length == 1
      new_cake << row
      new_cake << Array.new(row.size, '.')
      new_cake << Array.new(row.size, ' ')
    else
      raisin_indices.each do |raisin_index|
        new_row = Array.new(row.size, '.')
        new_row[raisin_index] = 'o'
        new_cake << new_row
        new_cake << Array.new(row.size, '.')
        new_cake << Array.new(row.size, ' ')
      end
    end
  end

  new_cake
end

cake = [
  %w[. o . o . . . .],
  %w[. . . . . . . .],
  %w[. . . . o . . .],
  %w[. . . . . . . .],
  %w[. . . . . o . .],
  %w[. . . . . . . .]
]

raisins?(cake)

result_cake = cut_cake(cake)

result_cake.each { |row| puts row.join(' ') }
