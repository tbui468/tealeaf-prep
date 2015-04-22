#1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages.has_key?("Spot")

#Bonus: include?, key?, member?

#2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843,
         "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
         
#total_age = 0
         
#ages.each_value { |value| total_age += value }

#puts total_age

puts ages.values.inject(:+)

#3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages.select { |key, value| value <= 100 }

#or use keep_if

#4 
munsters_description = "The Munsters are creepy in a good way."

s1 = munsters_description.capitalize
s2 = munsters_description.swapcase
s3 = munsters_description.downcase
s4 = munsters_description.upcase

puts s1
puts s2
puts s3
puts s4

#5
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

p ages

#6
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, 
         "Marilyn" => 22, "Spot" => 237 }
         
puts ages.values.min

#7
advice = "Few things in life are as important as house training your
          pet dinosaur."

#advice.match("Dino")
          
puts advice.include?("Dino")

#8
flintstones = %w{Fred Barney Wilma Betty BamBam Pebbles}

puts flintstones.find_index { |name| name.match('Be') }

#9
short_names = flintstones.map! { |name| name[0..2] }

p short_names
  
#10 
short_names = flintstones.map! { |name| name[0,3] }

p short_names
