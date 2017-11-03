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
    granny("Rye? It's in the breadbox honey..")
    puts "(It seems as though Granny's pretending you didn't say that.)"
    yourep
    if $reply == "BYE"
      granny("Pie? There's some right in the fridge!")
      puts "(She really wants you to stay.)"
      yourep
      if $reply == "BYE"
        granny("FINE! If you want to leave then go, little brat!")
        break
      end
    end
  elsif $reply == $reply.upcase
    granny("NO, NOT SINCE #{rand(1930..1950)}!")
  else
    granny("WHAT'S THAT??? SPEAK UP LOUDER SONNY!")
  end
end
