#1
arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number)
  puts "#{number} is in the array."
end

arr.each do |x|
  if x == number
    puts "#{number} is in the array."
  end
end

#2 
  #1. ["b",["b",2],["b",3],["a",1],["a",2],["a",3]]
  #2 [["b"], ["a", [1, 2, 3]]]
  
#3 puts arr.last.first 
# or puts arr[1][0]

#4 #1 3
   #2 error
   #3 8
   
#5 #1 e
   #2 T
   #3 A
   
#6 when calling on names, an index value, an integer, is needed inside the
#bracket.  
#her are some examples that will work
#names[3] = 'jody'
#if you didn't know the index of 'maragaret', the following would work
#names[names.index('margaret')] = 'jody'

#7
array1 = [1, 2, 3, 4, 5]

array2 = array1.map { |n| n += 2 }

p array1
p array2
  