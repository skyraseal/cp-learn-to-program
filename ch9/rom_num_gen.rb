puts "Welcome to the roman numeral generator.  Please input a number between 0 and 4999:"
num = gets.chomp.to_i
while true
  if num >= 0 && num <= 4999
    break
  else
    puts "Your number is invalid. Please enter a number between 0 and 4999:"
    num = gets.chomp.to_i
  end
end

rom_m = num / 1000
rom_d = (num % 1000) / 500
rom_c = (num % 1000 % 500) / 100
rom_l = (num % 1000 % 500 % 100) / 50
rom_x = (num % 1000 % 500 % 100 % 50) / 10
rom_v = (num % 1000 % 500 % 100 % 50 % 10) / 5
rom_i = num % 1000 % 500 % 100 % 50 % 10 % 5

rom_num = "M"*rom_m + "D"*rom_d + "C"*rom_c + "L"*rom_l + "X"*rom_x + "V"*rom_v + "I"*rom_i

puts "Your roman numeral is: #{rom_num}"
