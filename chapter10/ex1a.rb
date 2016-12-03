
def ui
  puts "Write the words to sort"
  some_words = []
  while true
    word = gets.chomp
    break if word == ""
    some_words << word
  end
  puts "List of inserted words sorted!!"
  some_words
end

def sort some_array
  amount_words = some_array.size
  sorted_array = []
  for i in 0...amount_words
    min = some_array[0]
    for i in 0...some_array.size-1
      min = some_array[i+1] if min > some_array[i+1]
    end
    sorted_array << min
    some_array.delete(min)
  end
  puts sorted_array
end

sort ui
