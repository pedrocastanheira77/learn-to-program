question = false
speak_up_answer = "grandma> HUH?! SPEAK UP, SONNY!"

puts "you> HELLO GRANDMA!"

while question != "BYE"
  print "you> "
  question = gets.chomp
  if question == "BYE"
    puts "grandma> BYE SONNY!"
  elsif question != question.upcase
    puts speak_up_answer
  else
    year = 0
    while year < 1930
      year = rand(1951)
    end
    puts "grandma> NO, NOT SINCE #{year}!"
  end
end
