# Brainstorming
# First split up number by millions, thousands, hundreds, tens, ones
# Apply same number logic to each then add strings together

def english_number(num)
  num_string = ""
  if num < 0
    return "Please enter a non-negative number."
  end
  if num == 0
    return "zero"
  end

  ones_place = ['one','two','three','four','five','six','seven','eight','nine']
  tens_place = ['ten','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety']
  teenagers = ['eleven', 'twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
  splitter = [['thousand', 3], ['million', 6], ['billion', 9], ['trillion', 12]]

  left = num

  while splitter.length > 0
    split_pair = splitter.pop
    split_name = split_pair[0]
    split_base = 10 ** split_pair[1]
    write = left/split_base
    left = left - write*split_base

    if write > 0
      prefix = english_number(write)
      num_string = num_string + prefix + ' ' + split_name

      if left > 0
        num_string = num_string + ' '
      end
    end
  end

  write = left/100
  left = left - write*100

  if write > 0
    hundreds = english_number(write)
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/10
  left = left - write*10

  if write > 0
    if ((write == 1) && (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  return num_string
end

input = gets.chomp.to_i
puts english_number(input)
