require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://www.google.com/search?q=baseball'));

puts "H3 elements"
doc.css('#search h3').each do |el|
  puts el.inner_html
end