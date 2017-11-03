puts "Welcome to the full name putter-togetherer!"
puts "Please input your first name:"
fname = gets.chomp
puts "Middle name (press enter if none):"
mname = gets.chomp
puts "Last name:"
lname = gets.chomp

if mname == ""
  puts "Your full name is #{fname} #{lname}!"
else
  puts "Your full name is #{fname} #{mname} #{lname}!"
end
