def granny(says)
  puts "Granny: #{says}"
end

def yourep
  print "You reply: "
  $reply = gets.chomp
end

granny("Well hello there sonny!")
while true
  yourep
  if $reply == "BYE"
    granny("Leave then, you brat!")
    break
  elsif $reply == $reply.upcase
    granny("NO, NOT SINCE #{rand(1930..1950)}!")
  else
    granny("WHAT'S THAT??? SPEAK UP LOUDER SONNY!")
  end
end
