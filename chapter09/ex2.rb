library = [["I",1],
           ["V",5],
           ["X",10],
           ["L",50],
           ["C",100],
           ["D",500],
           ["M",1000]]

def question
  print "\nInsert a number to convert in old school roman numerals => "
  gets.chomp.to_i
end

def another_number
  puts
  print "Do you whish to convert another number (press Y if yes) => "
  input = gets.chomp
  return true if input.downcase == "y"
  return false
end

def library_check(number, library)
  for i in 0...library.size
    if number >= 1000
      return 6
    elsif number >= library[i][1] && number < library[i+1][1]
      return i
    end
  end
end

def roman_conversion(number, library)
  roman_constructor = []
  while number !=0
    i = library_check(number, library)
    roman_constructor.push(library[i][0])
    number = number - library[i][1]
  end
  roman_constructor
end

while true
 number = question
 roman_number = roman_conversion(number, library)
 puts "The roman number is #{roman_number.join}"
 continue = another_number
 break if continue == false
end
