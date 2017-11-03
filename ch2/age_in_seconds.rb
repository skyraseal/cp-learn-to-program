puts "What is your age?"

age = gets.chomp.to_i
age_in_seconds = age * 365 * 24 * 60 * 60

puts "At #{age.to_s}, your age in seconds is #{age_in_seconds.to_s}!"
