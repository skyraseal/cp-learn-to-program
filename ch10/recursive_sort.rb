#shuffler exercise
#default values
unsorted_array = []
still_unsorted = []

###method definitions
def sort(unsorted_array)
  recursive_sort(unsorted_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
  return sorted_array if unsorted_array.length == 0
  smallest = unsorted_array.pop
  still_unsorted = []

  unsorted_array.each do |target_word|
    if target_word.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = target_word
    else
      still_unsorted.push target_word
    end
  end

  sorted_array.push smallest
  recursive_sort(still_unsorted, sorted_array)
end

###Taking array from user
input = gets.chomp
until input == ""
  unsorted_array.push input
  input = gets.chomp
end

###Execute methods
puts "This is your sorted array:"
p sort(unsorted_array)
