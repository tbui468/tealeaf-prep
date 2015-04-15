#1 1. false, 2. false, 3. false, 4. true, 5. true

#2 
def all_cap_if_long(words)
  if words.length > 10
    words.upcase
  else
    words
  end
end

puts all_cap_if_long("Hello!")
puts all_cap_if_long("hello, Guys!")

#3


def evaluate_number1(number)
  if number < 0
    puts "#{number} is less than 0"
  elsif number <= 50
    puts "#{number} is between 0 and 50"
  elsif number <= 100
    puts "#{number} is between 50 and 100"
  else
    puts "#{number} is bigger than 100"
  end
end

#4
#1. False, 2. Did you get it right? 3. Alright now!

#5

def evaluate_number2(number)
  case
  when number < 0
    puts "#{number} is less than 0"
  when number <= 50
    puts "#{number} is between 0 and 50"
  when number <= 100
    puts "#{number} is between 50 and 100"
  else
    puts "#{number} is bigger than 100"
  end
end

puts "Give me a number between 0 and 100"
my_number = gets.chomp.to_i

evaluate_number1(my_number)
evaluate_number2(my_number)

#6 The if/else statement is missing the 'end' keyword
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)