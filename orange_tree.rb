class OrangeTree
   def initialize
   @age = 0
   @height = 0
   @oranges = 0
   puts 'A new Orange Tree is planted.'
   end
   def oneYearPasses
      @age = @age + 1
      @height = @height + 10
      @oranges = 0
      if @age > 2
         @oranges = @age*10
      else
         @oranges = 0
      end
      if @age >= 5
         puts "the tree is now" + @name.to_s + "old"
         puts "The tree is old now. Time to go to heaven. byebye"
         exit
      else
         puts "the tree is now " + @age.to_s + " year old"
         puts "the tree is now " + @height.to_s + " feet high"
         puts "the tree has now " + @oranges.to_s + " oranges"
      end
   end
   def countorg
      if @oranges >=0
      puts "counting oranges. now!"
      puts "you have " + @oranges.to_s + " oranges"
      end
   end
   def pickoranges
      puts "how many would you like to pick?"
      numbertopick = gets.chomp
         while numbertopick.to_i > @oranges
            puts "Sorry, there are only" + @oranges.to_s + "to pick right now. Trya agin"
            puts "how many would you like to pick?"
            numbertopick = gets.chomp
         end
         if numbertopick.to_i <= @oranges
            puts "You just picked " + numbertopick + " oranges. Yum"
            @oranges = @oranges - numbertopick.to_i
            puts "there are " + @oranges.to_s + " oranges left"
         end
   end
end


tree = OrangeTree.new
puts ''
tree.oneYearPasses
tree.countorg

puts ''
tree.oneYearPasses
tree.oneYearPasses
tree.pickoranges
