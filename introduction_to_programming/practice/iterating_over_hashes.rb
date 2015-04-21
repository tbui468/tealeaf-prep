person = {name: 'bob', height: '6 ft', weight: '160 lb', hair: 'brown' }

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end