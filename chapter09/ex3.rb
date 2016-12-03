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

def corner_cases(i, number, library)
  n = 1 if (i == 0 || i == 1)
  n = 10 if (i == 2 || i == 3)
  n = 100 if (i == 4 || i == 5)
  n = 1000 if i == 6
  if (number >= (library[i+1][1] - library[i][1])) && ((library[i+1][1] - library[i][1]) % (5*n) != 0)
    roman_number = [library[i][0], library[i+1][0]]
    number = library[i+1][1] - library[i][1]
    return roman_number, number
  elsif (number >= (library[i+1][1] - library[i-1][1])) && ((library[i+1][1] - library[i-1][1]) % (5*n) != 0)
    roman_number = [library[i-1][0], library[i+1][0]]
    number = library[i+1][1] - library[i-1][1]
    return  roman_number, number
  else
    return []
  end
end

def roman_conversion(number, library)
  roman_constructor = []
  while number !=0
    i = library_check(number, library)
    corner_case = corner_cases(i, number, library)
    if corner_case.empty?
      i = library_check(number, library)
      roman_constructor.push(library[i][0])
      number = number - library[i][1]
    else
      corner_case[0].each {|x| roman_constructor.push(x)}
      number = number - corner_case[1]
    end
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
