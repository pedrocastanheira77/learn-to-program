print "Insert start year:"
start_date = gets.chomp
print "Insert end year:"
end_date = gets.chomp

puts "list of leap years between #{start_date} and #{end_date}:"
for i in start_date.to_i..end_date.to_i
  if i % 4 == 0
    if (i % 100 != 0) || (i % 400 == 0)
      puts i
    end
  end
end
