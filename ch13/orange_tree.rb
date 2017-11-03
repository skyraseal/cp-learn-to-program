#orange tree exercise
=begin
orange trees grow by 1 per year
more fruit the older it gets
tree should die when it gets too old
pick an orange should say how delicious the orange is
=end

class OrangeTree
  def initialize
    @height = 0
    @years = 0
    @fruit = 0
  end

  def one_year_passes
    if @years >= 10
      @fruit = 0
      puts "It's been a long time, orange tree.  #{@years} years to be exact. The tree no longer bears fruit. You think back to all the times it has been good to you."
    end
    @height += 1 if @height < 8
    @years += 1
    puts "Another year passes by... The tree is now #{@height}m tall."
    print "The remaining oranges from last year fall off the tree." if @fruit > 0

    if fruit_bearing?
      @fruit = rand(10..15) * (@height-2)
      puts "The tree bears #{@fruit} oranges for the year!"
    end
  end

  def pick_fruit
    if @fruit <= 0
      puts "There aren't any oranges left to pick."
    else
      @fruit -= 1
      trait = ["delicious", "sour", "sweet"]
      puts "You pick off an orange and try it. It's #{trait[rand(trait.length)]}!"
    end
  end

  def examine
    puts "The tree is #{@height} meters tall after #{@years} years."
    puts "There are #{@fruit} orange(s) on the tree."
  end

  private
  def fruit?
    @fruit > 0
  end

  def fruit_bearing?
    @height >= 3 && @years <= 10
  end
end

ot = OrangeTree.new
12.times {ot.one_year_passes}
ot.examine
