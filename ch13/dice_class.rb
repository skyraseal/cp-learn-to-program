#dice training

class Die
  def initialize
    roll
  end

  def set(num)
    if num < 1 || num > 6
      puts "Invalid dice number"
    else
      @number_showing = num
    end
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end
end

die1 = Die.new
p die1.showing
