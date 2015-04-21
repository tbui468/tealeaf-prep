a = [1,2,3,4]

def mutate(array)
  array.pop
end

def no_mutate(array)
  array.last
end

p "Before the mutate method: #{a}"
p mutate(a)
p "After the mutate method: #{a}"

p "Before no_mutate: #{a}"
no_mutate(a)
p "After no_mutate: #{a}"