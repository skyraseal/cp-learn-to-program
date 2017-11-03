def robinus(input)
  puts "Robinus says, \"#{input}\"."
end

robinus("Greeetings earthling, welcome to my realm.")
robinus("I am Robinus the robot! What is your favorite number?")
print "(You decide to type in your favorite number): "
favnum = gets.chomp.to_i
robinus("#{favnum.to_s} huh? Well mine is #{(favnum + 1).to_s}! Ha ha ha. Bigger and better.")
