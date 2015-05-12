#1
munsters = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" } 
  }

total_age = 0
munsters.each do |key, value|
  if value["gender"] == "male"
    total_age += value["age"]
  end
end

puts total_age

#2

munsters = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" } 
}
name_length_order = 
original_order = 

index = 0

munsters.each do |key, value|
  value["original_order"] = index
  value["name_order"] = key.length
  index += 1
end

p "original order"
munsters.to_a.sort{|a, b| a[1]["original_order"] <=> b[1]["original_order"]}.each{ |item| puts item }

p "name order"
munsters.to_a.sort{|a, b| b[1]["name_order"] <=> a[1]["name_order"]}.each{ |item| puts item }

#3

munsters.each{ |key, value| puts "#{key} is a #{value["age"]} year old #{value["gender"]}." }

#4
def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabega"
  an_array_param += ["rutabega"]
  
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts my_string
p my_array

#5
sentence = "Humpty Dumpty sat on a wall."

puts sentence.split(/\W/).reverse.join(' ') + '.'

words = sentence.split(/\W/) #splits on spaces and non alphabet charaters
words.reverse!
puts words.join(' ') + '.'

#6
  #34
  
#7
# demo_hash is not reassigned, so it changes the original
# munsters hash

#8
class String
  def pretty_short_version(max_length)
    new_string = self
    if new_string.length > max_length - 3
      new_string = self[0, max_length - 3] 
      while !new_string[-1].eql?(' ') and new_string.length > 0 do
        new_string = new_string[0,new_string.length - 1]
      end
      new_string = new_string[0, new_string.length - 1]
      new_string += '...'
    end
    new_string
  end
end

puts "hello my name is bob and I like to eat dogs and cats".pretty_short_version(25)

#9 paper

#10 no
