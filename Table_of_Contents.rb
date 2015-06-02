table = ["chapter 1", "intro", "page 1", "chapter 2", "second", "page 3"]
linewidth = 40
header = "Table of Contents"
puts header.center linewidth
puts table[0..1].join(" ").ljust(linewidth/2) + table[2].rjust(linewidth/2)
puts table[3..4].join(" ").ljust(linewidth/2) + table[5].rjust(linewidth/2)




