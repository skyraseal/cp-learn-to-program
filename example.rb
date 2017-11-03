#log exercise
#better logger included
$nesting = 0

def log(desc, &block)
  puts " "*$nesting + "Starting \"#{desc}\" block..."
  $nesting += 2
  call_save = block.call
  $nesting += -2
  puts " "*$nesting + "...\"#{desc}\" finished! It returned: #{call_save}"
end

log("block 1") do
  log("block 2") do
    2+2
  end
  "joe mama"
end
