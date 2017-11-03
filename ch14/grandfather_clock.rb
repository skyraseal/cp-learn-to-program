#grandfather clock exercise

def clock_hours(&insert_block)
  hours = Time.new.hour
  if hours > 12
    hours = hours - 12
  elsif hours == 0
    hours = 12
  else
    hours
  end

  hours.times do
    insert_block.call
  end
end

clock_hours do
  puts "DONG!"
end
