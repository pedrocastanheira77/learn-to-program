puts "Hello, birthdate year?"
year = gets.chomp
puts "Month?"
month = gets.chomp
puts "Day?"
day = gets.chomp
age = Time.new - Time.local(year, month, day)
age = (age/60/60/24/365).to_i
age.times do
  puts "Spank!"
end
