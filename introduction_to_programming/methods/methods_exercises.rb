#1
def greeting(name)
  puts "Hello #{name}!"
end

greeting('Thomas')

#2

# 1. 2, 2. nil, 3. "Joe"", 4. "four", 5. nil

#3
def multiply(a,b)
  a*b
end

puts multiply(4,6)

#4 it will print nothing because the "puts" method is after the return

def scream(words)
  words = words + '!!!'
  return puts words
end

scream("Yippeee")

#5 It will print "Yippeee!!!" and return nil

#6 The 'calculate_producet' method expects two arguments when only one is given

