# Range Example
size = 5

input = Array.new(size);

puts "Let's multiple #{size} numbers together!"

(0..size).each do |i|
	print "Enter a number:"
	input[i] = gets.chomp.to_i
end

product = 1
input.each do |i|
	product *= i
end

puts "The product of those values is: #{product}"