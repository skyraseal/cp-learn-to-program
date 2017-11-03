puts "Welcome to the word sorter! Enter the words you wish to be sorted.  When finished, press ENTER while blank."
puts "Enter words here:"

word_array = []

input = gets.chomp
while input != ""
  word_array.push input
  input = gets.chomp
end

puts "Here is your sorted array:"
print word_array.sort
puts ""
