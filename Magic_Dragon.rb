class Dragon
   def initialize name
      @name = name
      @asleep = false
      @stuffinBelly = 10
      @stuffinIntestine = 0

      puts @name + " is born!"
   end

   def feed
      puts "You feed " + @name + "."
      @StuffinBelly = 10
      passageofTime
   end
   def walk
      puts "You walk " + @name + "."
      @stuffinIntestine = 0
      passageofTime
   end
   def putToBed
      puts "You put " + @name + " to bed."
      @asleep = true
      3.times do
         if @asleep
            passageofTime
         end
         if @asleep
            puts @name + " snores, filling the room with smoke."
         end
      end
      if @alseep == true
         @asleep = false
         puts @name + " wakes up slowly."
      end
   end
   def toss
      puts "you toss " + @name + " up into the air"
      puts "he giggles, which singes your eyebrows."
      passageofTime
   end
   def rock
      puts "You rock " + @name + " gently."
      @asleep = true
      puts "He briefly dozes off..."
      passageofTime
      if @asleep
         @asleep = false
         puts "...but waks when you stop."
      end
   end
   private
   def hungry?
      @stuffinBelly <= 2
   end
   def poopy?
      @stuffinIntestine >= 8
   end
   def passageofTime
      if @stuffinBelly > 0
         @stuffinBelly = @stuffinBelly - 1
         @stuffinIntestine = @stuffinIntestine + 1
      else
         if @asleep
            @asleep = false
            puts "He wakes up suddenly!"
         end
         puts @name + " is starving. In desperation, he ate YOU!"
         exit
      end
      if hungry?
         if @asleep
            @asleep = false
            puts "He wakes up suddenly!"
         end
         puts @name + "'s stomach grumbles"
      end
      if poopy?
         if @asleep
            @asleep = false
            puts "Hw wakes up suddenly!"
         end
         puts @name + " does the potty dance..."
      end
   end
end

puts "name your pet"
givenname = gets.chomp
pet = Dragon.new givenname
answer = " "
while answer != "bye"
que = "use the following commands: feed, toss, rock, walk, puttobed"
puts que
answer = gets.chomp.downcase
   if answer == "feed"
      pet.feed
   elsif answer == "toss"
      pet.toss
   elsif answer == "rock"
      pet.rock
   elsif answer == "walk"
      pet.walk
   elsif answer == "puttobed"
      pet.putToBed
   else
      puts "please enter a proper command: feed, toss, rock, walk, puttobed"
   end
end
exit




