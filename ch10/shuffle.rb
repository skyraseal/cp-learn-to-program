#shuffler exercise
unshuffled_array = []

while true
  add2array = gets.chomp
  break if add2array == ""
  unshuffled_array.push add2array
end

shuffled_array = []

until unshuffled_array.length == 0
  random_num = rand(unshuffled_array.length)
  select_word = unshuffled_array[random_num]
  shuffled_array.push select_word
  unshuffled_array.delete_at(random_num)
end

puts shuffled_array
