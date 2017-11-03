#picture renaming/moving exercise
puts "This program is made for Ubuntu distributions."
puts "What is your computer account user name?"
user_name = gets.chomp

Dir.chdir "/home/#{user_name}/ProjectPictures/" #changes focused directory, where the pictures will be moved to

pic_names = Dir["/home/#{user_name}/Pictures/**/*.jpg"] #makes an array with all the files found through this address to transfer to focused directory

puts "What would you like to call this picture batch?"
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:"

pic_number = 1 #this is the counter starting at 1

pic_names.each do |name|
  print '.' #this is the progress bar, prints for each count completing
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist?(new_name)
    puts "\nERROR: A file with the name \"#{new_name}\" already exists, program has been aborted!"
    exit
  end

  File.rename(name, new_name)
  pic_number += 1

end

puts
puts "Done transferring!"
