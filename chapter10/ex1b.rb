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

def sort some_array, sorted_list
  if !(some_array.empty?)
    min = some_array[0]
    for i in 0...some_array.size-1
      min = some_array[i+1] if min > some_array[i+1]
    end
    some_array.delete(min)
    sorted_list << min
    sort some_array, sorted_list
  elsif some_array.empty?
    sorted_list
  end
end

sorted_list = []
puts sort ui, sorted_list
