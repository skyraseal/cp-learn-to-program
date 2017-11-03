#happy birthday exercise

puts "Welcome to the age calculator!  Here we can calculate how old you are."

puts "What year were you born?"
year = gets.chomp.to_i
puts "What month were you born? (input 1-12)"
month = gets.chomp.to_i
puts "What day were you born? (please input a valid day)"
day = gets.chomp.to_i

puts "\n\nCalculating . . . \n\n"

seconds_old = Time.new - Time.local(year, month, day)
years_old = (seconds_old / 60 / 60 / 24 / 365).floor
puts "You are #{years_old} years old!"

counter = 1
until counter > years_old
  puts "#{counter} SPANK!"
  counter += 1
end
