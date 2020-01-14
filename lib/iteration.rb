def join_ingredients(src)
  row_index = 0
  new_array = []
  while row_index < src.count do
    element_index = 0
    while element_index < src[row_index].count do
      new_array << "I love #{src[row_index][element_index]} and #{src[row_index][element_index + 1]} on my pizza"
      element_index += 2
    end
    row_index += 1
  end
  new_array
end

def find_greater_pair(src) #greater or equal
  row_index = 0
  new_array = []
  while row_index < src.count do
    element_index = 0
    while element_index < src[row_index].count do
      if src[row_index][0] >= src[row_index][1]
        new_array << src[row_index][0]
      elsif src[row_index][1] > src[row_index][0]
        new_array << src[row_index][1]
      end
      element_index += 2
    end
    row_index += 1
  end
  new_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total = 0
  row_index = 0
  while row_index < src.count do
    num1 = src[row_index][0] 
    num2 = src[row_index][1] 
    if num1.even? && num2.even?
     total += (num1 + num2)
     row_index += 1
    else
    row_index += 1
    end  
  end
total
end
