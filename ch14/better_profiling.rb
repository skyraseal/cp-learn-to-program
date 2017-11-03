def profile block_description, &block
  profiling = false
  if profiling
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  end
end

profile 'count to a million' do
  number = 0
  1000000.times do
    number += 1
  end
end