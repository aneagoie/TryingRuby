me = " "
me = gets.chomp

while me != "BYE"
   if me == me.upcase
      year = rand(1938..1950)
      puts "NO, NOT SINCE " + year.to_s
      me = gets.chomp
   else
      puts "HUH?! SPEAK UP, SONNY!"
      me = gets.chomp
   end
end

if me == "BYE"
   puts "huh?"
   me = gets.chomp
end

if me == "BYE"
   puts "huh?"
   me = gets.chomp
end


puts " "