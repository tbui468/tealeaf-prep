#1
flintstones = %w{Fred Barney Wilma Betty BamBam Pebbles}
p flintstones

#2
flintstones << "Dino"
flintstones.pop

#3
flintstones.push("Dino", "Hoppy")
p flintstones

#4
advice = "Few things in life are as important as house training you pet dinosaur."
array = advice.split(" house ")
array = array[0]
p array

p advice.slice!(0, advice.index("house"))

#5
statement = "The Flintstones Rock!"
puts statement.count("\\t")
puts statement.scan('t').count #scan makes an array

#6
title = "Flintstones Family Members"
title.center(40)
