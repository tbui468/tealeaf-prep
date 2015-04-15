
puts "Give me a number greater than 0"

x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done!"