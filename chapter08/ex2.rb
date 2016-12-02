title = "Table of Contents".center(40)
content = [["Getting Started","page 1"],
           ["Numbers", "page 9"]]
chapter_number = 1
puts title
puts
for i in 0...content.size
  puts "Chapter #{i+1} #{content[i][0].ljust(30)}" + content[i][1].rjust(10)
end
