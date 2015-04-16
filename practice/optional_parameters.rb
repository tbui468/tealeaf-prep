#optional hash is for :city and :age

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}."
  else
    puts "Hi, my name is #{name}" +
         ", I am #{options[:age]} years old" +
         " and I live in #{options[:city]}."
  end
end

greeting("Thomas")
greeting("Thomas", {city: "Seattle", age: 28})
greeting("Thomas", {city: "Seattle"})
greeting("John", city: "New York", age: 30)