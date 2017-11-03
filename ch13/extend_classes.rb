#extending built-in classes exercise

class Array
  def shuffle
    unshuffled_array = self
    shuffled_array = []
    until unshuffled_array.length == 0
      random_num = rand(unshuffled_array.length)
      select_word = unshuffled_array[random_num]
      shuffled_array.push select_word
      unshuffled_array.delete_at(random_num)
    end
    shuffled_array
  end
end

class Integer
  def to_roman
    num = self
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
  end
end

p ['i','eat','chickens','they','are','yummy'].shuffle
p 4.to_roman
