n = 99
until n == 0
  puts "#{n} bottles of beer on the wall, #{n} bottles of beer! Take one down, pass it around, #{(n.to_i-1).to_s} bottles of beer on the wall!"
  n -= 1
end
