#1
array = [1,2,3,4,5,6,7,8,9,10]

puts "Number 1"
array.each { |num| puts num }

#2
puts "Number 2"
array.select { |num| puts num if num > 5 }

#3
new_array = array.select { |num| num % 2 == 1 }

#4
array.push(11)
array.unshift(0)

#5
array.delete(11)
#array.pop
array.push(3)
# array << 3

#6
array.uniq!

#7 An array contains ordered values, 
#  and a hash contains unordered key/value pairs

#8
puts "Number 8"
hash1 = { :one => 1, :two => 2}
hash2 = { one: 1, two: 2 }

#9
  #1. h[:b]
  #2. h[:e] = 5
  #3. h.delete_if { |key, value| value < 3.5 }
  
#10 Hash values can be arrays.  For example { h1: [1, 2], h2: [3, 4]}
#   An array of hashes is also possible.  For example [ {one: 1, two: 2}, {three:3, four: 4}]

#11 api.rubyonrails.org is organized in a simple format.  The authors seem
    #to be going for a no-nonsense approach to the design
    
#12 

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], [
                 "sally@email.com", "404 Not Found Dr.", "123-234-3456"]]
                 
contacts = {"Joe Smith" => {}, "Sally Johnson" => {} }

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]

contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts contacts["Joe Smith"][:email] 
puts contacts["Sally Johnson"][:phone]

#14 
puts "Number 14"
contact_data = ["joes@gmail.com", "123 main st.", "555-123-3445"]
contacts = { "Joe Smith" => {} }

fields = [:email, :address, :phone]

#for a single person
fields.each do |param|
  contacts["Joe Smith"][param] = contact_data.shift
end

puts contacts["Joe Smith"]

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], [
                 "sally@email.com", "404 Not Found Dr.", "123-234-3456"]]
                 
contacts = {"Joe Smith" => {}, "Sally Johnson" => {} }

#for multiple entries
contacts.each_key do  |key|
  temp_field = contact_data.shift
  fields.each do |param|
    contacts[key][param] = temp_field.shift
  end
end

puts contacts["Joe Smith"]
puts contacts["Sally Johnson"]

#15
puts "Number 15"
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |word| word.start_with?("s") }
puts arr

arr.delete_if { |word| word.start_with?("s", "w") }
puts arr

#16
puts "Number 16"
a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk',
     'salted roads', 'white trees']

a.map! { |words| words.split(' ') }
a.flatten!
p a

#17 These hashes are the same!