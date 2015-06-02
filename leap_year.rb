puts "tell me a starting year"
start = gets.chomp
puts "tell me an ending year"
finish = gets.chomp

while start.to_i <= finish.to_i
   if start.to_i % 400 == 0
      puts start
      start = start.to_i + 1
   else
      if start.to_i % 4 == 0 and start.to_i % 100 != 0
      puts start
      start = start.to_i + 1
      else
      start = start.to_i + 1
      end
   end
end

