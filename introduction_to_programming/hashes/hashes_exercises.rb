#1
family = { uncles: ["bob", "joe", "steve"],
           sisters: ["jane", "jill", "beth"],
           brothers: ["frank", "rob", "david"],
           aunts: ["mary", "sally", "susan"]
          }
          
immediate_family = []

immediate_family = family.select { |key, value| (key == :brothers) || (key == :sisters) }

immediate_family = immediate_family.values.flatten

puts immediate_family

#2
hash1 = {one: 1, two: 2, three: 3 }
hash2 = {three: 6, four: 8, five: 10 }

puts hash1.merge(hash2)
puts "The original hashes didn't change"
puts hash1
puts hash2

puts hash1.merge!(hash2)
puts "Hash1 has been mutated"
puts hash1
puts hash2

#3
hash3 = {cat: "meow", dog: "woof", sheep: "bahh" }

puts hash3.keys
#or hash3.each_key {|key| puts key }
puts hash3.values
#or hash3.each_value {|value| puts value }
hash3.each { |key, value| puts "#{key} goes #{value}" }

#4 person[:name]

#5 has_value? method
if hash3.has_value?("meow")
  puts "There's a cat here."
else
  puts "There's no cat here."
end

#6

# use .split(//) to get array of letters from target word
# sort each array
#remove target word from array
# compare to target word
# if there are any matches, remove that word from array

puts "Number 6"

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
         'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
         'flow', 'neon']

#better solution with hashes     
final = {}

words.each do |word|
  key = word.split(//).sort.join
  if final.has_key?(key)
    final[key].push(word)
  else
    final[key]=[word]
  end
end

final.each_key do |key|
  p final[key]
end

=begin
#My solution
while words.length > 0 do
  final_list = [] # print this
  target_word = words.pop
  final_list.push(target_word)
  target_word = target_word.split(//)
  words.each do |word|
    if word.split(//).sort == target_word.sort
      final_list.push(word)
    end
  end
  final_list.each { |word| words.delete(word) }
  p final_list
end

=end

#7 The first hash uses a symbol as a key, the second a string

#8 B
