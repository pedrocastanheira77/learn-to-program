question = false
speak_up_answer = "grandma> HUH?! SPEAK UP, SONNY!"
bye_counter = 0

puts "you> HELLO GRANDMA!"

while !(question == "BYE" && bye_counter == 3)
  print "you> "
  question = gets.chomp
  if (question == "BYE" && bye_counter == 2)
    bye_counter += 1
    puts "grandma> BYE SONNY!"
  elsif (question == "BYE" && bye_counter < 3)
    bye_counter += 1
    puts speak_up_answer
  elsif question != question.upcase
    bye_counter = 0
    puts speak_up_answer
  else
    bye_counter = 0
    year = 0
    while year < 1930
      year = rand(1951)
    end
    puts "grandma> NO, NOT SINCE #{year}!"
  end
end
