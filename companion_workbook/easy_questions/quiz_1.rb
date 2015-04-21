#1 It will print 

# 1
# 2
# 2
# 3

#because uniq does not mutate caller

#2 Some methods can take ! at the end, which mutates the caller
  #! is also used to negate a boolean.  Methods ending with ?
  #return a boolean, but this is just convention.  
  #1 Means 'not equal' and used to compare two values
  #2 Negates the value of user_name.  !user_name is nil
  #3 words.uniq! mutates the caller, words
  #4 Used in ternary operator, eg true ? "It's true" : "Not true"
  #5 When used at the end of a method, it usually means the 
     #method returns a boolean
  #6 a double negation, turning object into a boolean
  
#3
advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!("important", "urgent")
puts advice

#4 numbers.delete_at(1) returns 2 and the array is now [1, 3, 4, 5]
  #numbers.delete(1) returns 1 and the array is now [2, 3, 4, 5]
  
#5 
x = (10..100).include?(42)
puts x

#6
famous_words = "and seven years ago..."

puts "Four score and " + famous_words

puts famous_words.prepend("Four score and ")

#7 42

#8 
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!
p flintstones

#9
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3,
                "BamBam" => 4, "Pebbles" => 5 }
                
p flintstones.assoc("Barney")

#10
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash ={}

flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

#flintstones.each do |key|
 # flintstones_hash[key] = flintstones.index(key)
#end

p flintstones_hash
                
  