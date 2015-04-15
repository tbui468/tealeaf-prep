#1
#1. [1, 2, 3, 4, 5] note: use .map to return modified array,
                         # and .map! to mutate array
                         
#2
answer = 'go'
loop do
  puts "Type something!"
  input = gets.chomp.to_s
  puts "You typed #{input}!"
  puts "Do you want to go again?"
  answer = gets.chomp.to_s
  if answer == 'STOP'
    break
  end
end

#3

array = [6, 5, 4, 3]

array.each_with_index { |item, index| puts "value: #{item}, index: #{index}" }

#4

def countdown(number)
  puts number
  if number > 0
    countdown(number - 1)
  end
end

countdown(5)
countdown(-5)
countdown(0)