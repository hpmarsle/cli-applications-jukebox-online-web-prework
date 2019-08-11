# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  menu = {}
  
  songs.each_with_index do |song_name, i| 
    menu[i+1] = song_name
  end
  
  puts "Please enter a song name or number:"
  
  choice = gets.strip
  
  if menu.has_key?(choice.to_i) 
    song_name = menu[choice.to_i]
    puts "Playing #{song_name}"
  elsif menu.has_value?(choice)
    song_name = choice
    puts "Playing #{song_name}"
  else
    puts "Invalid input, please try again"
  end

end 
 

def list (songs)
  songs.each_with_index{|song, i| puts "#{i + 1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  puts "Please enter a command:"
  while action = gets.strip
    unless action == "exit"
      case action
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      end
    else
      exit_jukebox
      break
    end
    puts "Please enter a command:"
  end
    # # **version 2 **
  # while action = gets.strip
  #   if action == "exit"
  #     exit_jukebox
  #     break
  #   elsif action == "list"
  #     list(songs)
  #   elsif action == "play"
  #     play(songs)
  #   elsif action == "help"
  #     help
  #   else
  #     puts "Please enter a valid choice."
  #   end
  #   action = gets.strip
  # end
end
