def library
  [["I",1],
   ["V",5],
   ["X",10],
   ["L",50],
   ["C",100],
   ["D",500],
   ["M",1000]]
end

def get_index(roman, i)
  counter = 0
  library.each do |x,y|
     break if x == roman[i]
     counter += 1
  end
  counter
end

def roman_to_decimal(roman_number)
  decimal, i = 0, 0
  while i < roman_number.length
    roman = roman_number.reverse
    index = get_index(roman, i)
    index_next = get_index(roman, i+1)
    if index <= index_next
      val = library[index][1]
    else
      val = library[index][1] - library[index_next][1]
      i += 1
    end
    decimal += val
    i += 1
  end
  print "roman number #{roman_number} = "
  print decimal
  puts
end

roman_to_decimal("III")
roman_to_decimal("IV")
roman_to_decimal("V")
roman_to_decimal("IX")
roman_to_decimal("CMXCI")
roman_to_decimal("XCVIII")
