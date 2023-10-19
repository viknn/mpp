# frozen_string_literal: true

class Book
  # attr_accessor :title, :author, :year

  def initialize(title, author, year)
    @title = title
    @author = author
    @year = year
  end

  def title
    @title
  end

  def title=(title)
    @title = title
  end

  def author
    @author
  end

  def author=(author)
    @author = author
  end

  def year
    @year
  end

  def year=(year)
    @year = year
  end

  def display_info
    puts "Title: #{title}"
    puts "Author: #{author}"
    puts "Year of Publication: #{year}"
  end
end

book = Book.new('Monster', 'Naoki Urasawa', '1994')

book.display_info

puts

book.title = 'New title'
book.author = 'New author'
book.year = 2048

book.display_info
