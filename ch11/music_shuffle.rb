#playlist builder exercise
puts "Please input playlist name:"
playlist_name = gets.chomp

Dir.chdir("/home/vinhgia/ProjectMusic/") #default directory to where the .m3u is written
music_array = Dir["/home/vinhgia/ProjectMusic/**/*.mp3"] #from where the music is taken

#shuffling array to randomize playlist
puts "Do you wish to randomize this playlist? (Y/N)"
while true
  randomize = gets.chomp
  if randomize.downcase == "y"
    shuffled_music_array = []
    until music_array.length == 0
      random_num = rand(music_array.length)
      select_song = music_array[random_num]
      shuffled_music_array.push select_song
      music_array.delete_at(random_num)
    end
    music_array = shuffled_music_array
    break
  elsif randomize.downcase == "n"
    break
  else
    puts "Please enter Y or N."
  end
end

#assembling .m3u file
music_array.each do |song|
  File.open "#{playlist_name}.m3u", 'a+' do |f|
    f.puts song
  end
end
