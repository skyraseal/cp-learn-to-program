#dragon exercise
class Dragon
  def initialize(name)
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0
    puts "#{@name} is born."
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "Your put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts "He giggles, which singes your eyebrows."
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "... but wakes when you stop."
    end
  end

  private
  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly >  2
      #move food from belly to intestine
      @stuff_in_belly += -1
      @stuff_in_intestine += 1
    else
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit #quits program
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} does a potty dance..."
    end
  end
end

puts "Welcome to the interactive dragon simulator!"
puts "To begin, please name your dragon:"
name = gets.chomp.capitalize
dragon = Dragon.new(name)

puts "These are the following commands to interact with your dragon: \nwalk, feed, put to bed, toss, rock, exit"
command_list = ["walk","feed","put to bed","toss" "rock", "exit"]

while true
  print "What do you want to do for #{name}? "
  input = gets.chomp
  if !command_list.include?(input.downcase)
    puts "That command doesn't exist! Try again."
    next
  end
  dragon.walk if input == "walk"
  dragon.feed if input == "feed"
  dragon.put_to_bed if input == "put to bed"
  dragon.toss if input == "toss"
  dragon.rock if input == "rock"
  exit if input == "exit"

end