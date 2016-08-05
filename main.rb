require './lib/triangle.rb'


puts "Put triangle's sides: "
triangle = Triangle.new(ARGV)
print triangle.check_type

