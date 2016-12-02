bottles_number = 99
while bottles_number > 0
  puts "#{bottles_number} bottles of beer on the wall, #{bottles_number} bottles of beer."
  puts "Take one down and pass it around, #{bottles_number-1} bottles of beer on the wall." if bottles_number > 1
  puts "Take one down and pass it around, no more bottles of beer on the wall." if bottles_number == 1
  puts
  bottles_number -= 1
end

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."
