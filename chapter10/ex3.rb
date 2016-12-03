def ui
  puts "Write the words to sort"
  array_words = []
  while true
    word = gets.chomp
    break if word == ""
    array_words << word
  end
  puts "List of inserted words sorted!!"
  array_words
end

def sort array_words
  new_array_words = []
  sorted_list_array = []
  array_words.each do |word|
    new_array_words << {:word_original => word,
                        :word_downcase => word.downcase}
  end
  sorted_list = new_array_words.sort_by {|v| v[:word_downcase]}
  sorted_list.each do |v|
    sorted_list_array << v[:word_original]
  end
  sorted_list_array
end

puts sort ui
