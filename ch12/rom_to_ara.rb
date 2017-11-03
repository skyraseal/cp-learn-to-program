#roman to arabic generator

def rom_to_ara(roman_numeral)
  #method setup
  converter = {
    i: 1,
    v: 5,
    x: 10,
    l: 50,
    c: 100,
    d: 500,
    m: 1000}
  prev = 0
  total = 0
  left_index = roman_numeral.length - 1

  #evaluation of the roman numeral, while making left_index smaller per loop
  until left_index < 0
    current = roman_numeral[left_index].downcase.to_sym
    arab_numeral_current = converter[current]
    if !arab_numeral_current
      return "That roman numeral is invalid, try again."
    end

    if arab_numeral_current < prev
      prev = arab_numeral_current
      arab_numeral_current *= -1
    else
      prev = arab_numeral_current
    end

    total += arab_numeral_current

    left_index -= 1
  end
  total
end

puts rom_to_ara("xiv")
puts rom_to_ara("sxiv")
