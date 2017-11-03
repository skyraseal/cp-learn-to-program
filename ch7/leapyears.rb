### Receive input ###
while true
  puts "Welcome to the leap year calculator.  Please input the starting year:"
  first_year = gets.chomp.to_i
  puts "Please input the ending year:"
  last_year = gets.chomp.to_i
  if last_year >= first_year
    break
  else
    puts "Invalid entries: Your ending year must be later than your starting year. Please re-try."
    puts "-------"
  end
end

leap_array = []

### Identify start year ###
if first_year%4 == 0
  start_year = first_year
else
  start_year = first_year + (4 - first_year%4)
end

until start_year > last_year
  if start_year % 100 == 0
  else
    leap_array.push start_year
  end
  start_year += 4
end
puts ""

puts "Here are the leap years you requested!"
print leap_array
puts ""
