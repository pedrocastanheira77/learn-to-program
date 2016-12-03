def ui
  puts "Write the words to sort"
  some_words = []
  while true
    word = gets.chomp
    break if word == ""
    some_words << word
  end
  puts "List of shuffle words!!"
  some_words
end

def shuffle some_array, shuffled_array
  if !(some_array.empty?)
    shuffle_index = rand(some_array.size)
    shuffled_array << some_array[shuffle_index]
    some_array.delete_at(shuffle_index)
    shuffle some_array, shuffled_array
  elsif some_array.empty?
    shuffled_array
  end
end

shuffled_array = []
puts shuffle ui, shuffled_array
