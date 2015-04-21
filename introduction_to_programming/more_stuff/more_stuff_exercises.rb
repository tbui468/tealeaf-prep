#1
words = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

def has_lab(array)
  array.each do |word|
    if word =~ /lab/
      puts word
    end
  end
end

has_lab(words)

#2 Nothing

#3 prevents program from stopping if there's an error

#4
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

#5 There's no & symbol before the block parameter