#1
10.times { |i| puts " "*i + "The Flintstones Rock!" }
  # book solution: 10.times { |i| puts "The Flintstones 
  # Rock!".rjust(21 + i) }
  # 21 is the length of the sentence
  
#2
statement = "The Flintstones Rock"
statement = statement.delete(" ")
letter_hash = {}

statement.each_char do |letter|
  if letter_hash.has_key?(letter)
    letter_hash[letter] += 1
  else
    letter_hash[letter] = 1
  end
end

p letter_hash

#3
puts "the value of 40 + 2 is " + (40 +2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

#4
# 1
# 3

# 1
# 2

#5
def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

puts factors(10)

#bonus 1 This checks if dividen is a factor of number

#bonus 2 This is the implicit return of the method
  #the other option is 'return divisors'

#6 There is no difference (wrong)
  # The first buffer will mutate the inputargument "buffer".
  # The second implementation does not mutate the argument,
  # rather, it returns a new buffer
  
#7 The variable limit is no inside the scope
  #He can fix this by declaring limit inside the method
  #or passing it in as an argument
  
def fib(first_num, second_num)
  limit = 15
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "The result is #{result}"

#8
words = "Hello world!"
puts words.split.map { |word| word.downcase.capitalize }.join(' ')



#9
class String
  def abbreviate(max_length)
    new_string = self
    if self.length > max_length
      new_string = new_string[0, max_length]
      new_string += "..."
    end
    new_string
  end
end



characters = [
    { :character => "Batman", :real_name => "Bruce Wayne", :description => "Comic book superhero who fights crime while wearing a costume loosely based on a bat" }, 
    { :character => "Robin", :real_name => "Dick Grayson", :description => "Loyal sidekick for batman -- much younger and smaller and sometimes portrayed by girl in later episodes" },
    { :character => "Commisioner Gordon", :real_name => "James Gordon", :description => "Police Commisioner of Gotham City and loyal friend of Batman -- frequently communicates secretly with Batman via signals or a special red BatPhone" }, 
    { :character => "Alfred", :real_name => "Alfred", :description => "The butler and also a key support player in many episodes providing communications, armament, and also moral support to Batman" }
]

characters.each do |char|
  char.each do |key, value|
    puts "#{key.to_s.capitalize!}: #{value}".abbreviate(32)
  end
end

#10
munsters = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}

adult_age = 18
senior_age = 65

munsters.each do |key, value|
  age = value["age"]
  if age < adult_age
    value["demographic"] = "child"
  elsif age < senior_age
    value["demographic"] = "adult"
  else
    value["demographic"] = "senior"
  end
end

p munsters

