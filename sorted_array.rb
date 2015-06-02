array = []
puts "type as many words as you want. Press enter on an empty line to spit it all out"
words = gets.chomp
array.push words
while words != ""
   words = gets.chomp
   array.push words
end

puts array.sort
