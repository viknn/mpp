# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'
require 'csv'

doc = Nokogiri::HTML(URI.open('https://en.wikipedia.org/wiki/List_of_libraries'))

lib_names = []

doc.css('div.mw-parser-output > ul > li').each do |library|
  library_text = library.text.strip
  break if library_text.include?('Esperanto libraries')

  lib_names << library_text.split(',').first unless library_text.empty?
end

CSV.open('libraries.csv', 'w') do |csv|
  id = 1

  lib_names.each do |lib_name|
    csv << [id, lib_name]

    id += 1
  end
end
