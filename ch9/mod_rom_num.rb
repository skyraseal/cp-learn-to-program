# asking for the arabic numeral
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
#---------

# roman numeral generation
rom_m = num / 1000 #1000
rom_cm = num % 1000 / 900 #900
rom_d = num % 1000 % 900 / 500 #500
rom_cd = num % 1000 % 900 % 500 / 400 #400
rom_c = num % 1000 % 900 % 500 % 400 / 100 #100
rom_xc = num % 1000 % 900 % 500 % 400 % 100 / 90 #90
rom_l = num % 1000 % 900 % 500 % 400 % 100 % 90 / 50 #50
rom_xl = num % 1000 % 900 % 500 % 400 % 100 % 90 % 50 / 40 #40
rom_x = num % 1000 % 900 % 500 % 400 % 100 % 90 % 50 % 40 / 10 #10
rom_ix = num % 1000 % 900 % 500 % 400 % 100 % 90 % 50 % 40 % 10 / 9 #9
rom_v = num % 1000 % 900 % 500 % 400 % 100 % 90 % 50 % 40 % 10 % 9 / 5 #5
rom_iv = num % 1000 % 900 % 500 % 400 % 100 % 90 % 50 % 40 % 10 % 9 % 5 / 4 # 4
rom_i =  num % 1000 % 900 % 500 % 400 % 100 % 90 % 50 % 40 % 10 % 9 % 5 % 4 #1

rom_num = "M"*rom_m + "CM"*rom_cm + "D"*rom_d + "CD"*rom_cd + "C"*rom_c + "XC"*rom_xc + "L"*rom_l + "XL"*rom_xl + "X"*rom_x + "IX"*rom_ix + "V"*rom_v + "IV"*rom_iv + "I"*rom_i
#---------

#final output
puts "Your roman numeral is: #{rom_num}"
