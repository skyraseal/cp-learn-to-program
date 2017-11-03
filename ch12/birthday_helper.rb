#birthday helper
#input file is birthday_input.txt
input_file = "birthday_input.txt"

#exporting input data to an array
input_array = File.readlines(input_file)
input_array.map! do |line|
  line.chomp
end

#transferring from array to hash
birthday_database = Hash.new
input_array.each do |line|
  ting = line.split("> ")
  birthday_database[ting[0]] = ting[1]
end

#asking user for name
puts "Hello, whose birthday would you like to look up? (case sensitive)"

name = gets.chomp
if !birthday_database[name]
  "That person doesn't exist in the database!"
end

puts "#{name}'s birthday is on #{birthday_database[name]}."
