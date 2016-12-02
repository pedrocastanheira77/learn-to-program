puts "Write the words to sort"
array_words = []
while true
  word = gets.chomp
  break if word == ""
  array_words << word
end
puts "List of inserted words sorted!!"
puts array_words.sort
